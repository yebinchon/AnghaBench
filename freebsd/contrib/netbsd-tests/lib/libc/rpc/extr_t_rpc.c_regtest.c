
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
typedef int pid_t ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef int CLIENT ;


 int DESTROY ;
 int DPRINTF (char*,...) ;
 int ERRX (int ,char*,int,...) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int PLUSONE ;
 int PROGNUM ;
 int RPC_SUCCESS ;
 int SKIPX (int ,char*,int) ;
 int SVC_FDSET_POLL ;
 int VERSNUM ;
 int atoi (char const*) ;
 int clnt_call (int *,int ,int ,void*,int ,void*,int ) ;
 int * clnt_create (char const*,int ,int ,char const*) ;
 int clnt_destroy (int *) ;
 int clnt_spcreateerror (char*) ;
 int clnt_sperrno (int) ;
 int errno ;
 int fork () ;
 int server ;
 int sleep (int) ;
 int strerror (int ) ;
 int svc_create (int ,int ,int ,char const*) ;
 int svc_fdset_init (int ) ;
 int svc_run () ;
 int tout ;
 scalar_t__ xdr_int ;
 scalar_t__ xdr_void ;

__attribute__((used)) static int
regtest(const char *hostname, const char *transp, const char *arg, int p)
{
 CLIENT *clnt;
 int num, resp;
 enum clnt_stat rv;
 pid_t pid;

 if (arg)
  num = atoi(arg);
 else
  num = 0;




 if (!svc_create(server, PROGNUM, VERSNUM, transp))
 {
  SKIPX(EXIT_FAILURE, "Cannot create server %d", num);
 }

 switch ((pid = fork())) {
 case 0:
  DPRINTF("Calling svc_run\n");
  svc_run();
  ERRX(EXIT_FAILURE, "svc_run returned %d!", num);
 case -1:
  ERRX(EXIT_FAILURE, "Fork failed (%s)", strerror(errno));
 default:
  sleep(1);
  break;
 }

 DPRINTF("Initializing client\n");
 clnt = clnt_create(hostname, PROGNUM, VERSNUM, transp);
 if (clnt == ((void*)0))
  ERRX(EXIT_FAILURE, "%s",
      clnt_spcreateerror("clnt_raw_create"));
 rv = clnt_call(clnt, PLUSONE, (xdrproc_t)xdr_int, (void *)&num,
     (xdrproc_t)xdr_int, (void *)&resp, tout);
 if (rv != RPC_SUCCESS)
  ERRX(EXIT_FAILURE, "clnt_call: %s", clnt_sperrno(rv));
 DPRINTF("Got %d\n", resp);
 if (++num != resp)
  ERRX(EXIT_FAILURE, "expected %d got %d", num, resp);
 rv = clnt_call(clnt, DESTROY, (xdrproc_t)xdr_void, ((void*)0),
     (xdrproc_t)xdr_void, ((void*)0), tout);
 if (rv != RPC_SUCCESS)
  ERRX(EXIT_FAILURE, "clnt_call: %s", clnt_sperrno(rv));
 clnt_destroy(clnt);

 return EXIT_SUCCESS;
}
