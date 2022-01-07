
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsocket {scalar_t__ type; int state; int opts; } ;


 int EBADF ;
 int RS_OPT_SVC_ACTIVE ;
 int RS_SVC_REM_KEEPALIVE ;
 int SHUT_RDWR ;
 scalar_t__ SOCK_STREAM ;
 int ds_shutdown (struct rsocket*) ;
 int idm ;
 struct rsocket* idm_lookup (int *,int) ;
 int rs_connected ;
 int rs_free (struct rsocket*) ;
 int rs_notify_svc (int *,struct rsocket*,int ) ;
 int rshutdown (int,int ) ;
 int tcp_svc ;

int rclose(int socket)
{
 struct rsocket *rs;

 rs = idm_lookup(&idm, socket);
 if (!rs)
  return EBADF;
 if (rs->type == SOCK_STREAM) {
  if (rs->state & rs_connected)
   rshutdown(socket, SHUT_RDWR);
  else if (rs->opts & RS_OPT_SVC_ACTIVE)
   rs_notify_svc(&tcp_svc, rs, RS_SVC_REM_KEEPALIVE);
 } else {
  ds_shutdown(rs);
 }

 rs_free(rs);
 return 0;
}
