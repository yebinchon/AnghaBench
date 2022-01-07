
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef int SVCXPRT ;
typedef int CLIENT ;


 int DPRINTF (char*,int) ;
 int ERRX (int ,char*,int,...) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int PLUSONE ;
 int PROGNUM ;
 int RPC_SUCCESS ;
 int VERSNUM ;
 int atoi (char const*) ;
 int clnt_call (int *,int ,int ,void*,int ,void*,int ) ;
 int clnt_destroy (int *) ;
 int * clnt_raw_create (int ,int ) ;
 int clnt_spcreateerror (char*) ;
 int clnt_sperrno (int) ;
 int server ;
 int svc_destroy (int *) ;
 int * svc_raw_create () ;
 int svc_reg (int *,int ,int ,int ,int *) ;
 int tout ;
 scalar_t__ xdr_int ;

__attribute__((used)) static int
rawtest(const char *arg)
{
 CLIENT *clnt;
 SVCXPRT *svc;
 int num, resp;
 enum clnt_stat rv;

 if (arg)
  num = atoi(arg);
 else
  num = 0;

 svc = svc_raw_create();
 if (svc == ((void*)0))
  ERRX(EXIT_FAILURE, "Cannot create server %d", num);
 if (!svc_reg(svc, PROGNUM, VERSNUM, server, ((void*)0)))
  ERRX(EXIT_FAILURE, "Cannot register server %d", num);

 clnt = clnt_raw_create(PROGNUM, VERSNUM);
 if (clnt == ((void*)0))
  ERRX(EXIT_FAILURE, "%s",
      clnt_spcreateerror("clnt_raw_create"));
 rv = clnt_call(clnt, PLUSONE, (xdrproc_t)xdr_int, (void *)&num,
     (xdrproc_t)xdr_int, (void *)&resp, tout);
 if (rv != RPC_SUCCESS)
  ERRX(EXIT_FAILURE, "clnt_call: %s", clnt_sperrno(rv));
 DPRINTF("Got %d\n", resp);
 clnt_destroy(clnt);
 svc_destroy(svc);
 if (++num != resp)
  ERRX(EXIT_FAILURE, "expected %d got %d", num, resp);

 return EXIT_SUCCESS;
}
