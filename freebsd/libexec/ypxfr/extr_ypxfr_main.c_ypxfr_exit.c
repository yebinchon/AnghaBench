
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ypxfrstat ;
typedef scalar_t__ yppush_status ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_6__ {int (* close ) (TYPE_3__*) ;} ;
struct TYPE_5__ {scalar_t__ status; } ;
typedef int CLIENT ;


 int RPC_ANYSOCK ;
 int clnt_destroy (int *) ;
 int clnt_spcreateerror (char*) ;
 int clnt_sperror (int *,char*) ;
 int * clntudp_create (int *,scalar_t__,int,struct timeval,int*) ;
 TYPE_3__* dbp ;
 int errno ;
 int exit (int) ;
 int strerror (int ) ;
 int stub1 (TYPE_3__*) ;
 int unlink (char*) ;
 int yp_error (char*,int ) ;
 int * yppushproc_xfrresp_1 (TYPE_1__*,int *) ;
 int ypxfr_callback_addr ;
 scalar_t__ ypxfr_prognum ;
 TYPE_1__ ypxfr_resp ;
 int ypxfrerr_string (scalar_t__) ;

__attribute__((used)) static void
ypxfr_exit(ypxfrstat retval, char *temp)
{
 CLIENT *clnt;
 int sock = RPC_ANYSOCK;
 struct timeval timeout;


 if (temp != ((void*)0)) {
  if (dbp != ((void*)0))
   (void)(dbp->close)(dbp);
  if (unlink(temp) == -1) {
   yp_error("failed to unlink %s",strerror(errno));
  }
 }

 if (ypxfr_prognum) {
  timeout.tv_sec = 20;
  timeout.tv_usec = 0;

  if ((clnt = clntudp_create(&ypxfr_callback_addr, ypxfr_prognum,
     1, timeout, &sock)) == ((void*)0)) {
   yp_error("%s", clnt_spcreateerror("failed to "
       "establish callback handle"));
   exit(1);
  }

  ypxfr_resp.status = (yppush_status)retval;

  if (yppushproc_xfrresp_1(&ypxfr_resp, clnt) == ((void*)0)) {
   yp_error("%s", clnt_sperror(clnt, "callback failed"));
   clnt_destroy(clnt);
   exit(1);
  }
  clnt_destroy(clnt);
 } else {
  yp_error("Exiting: %s", ypxfrerr_string(retval));
 }

 exit(0);
}
