
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ssh {int * authctxt; } ;
typedef int Authctxt ;


 int SSH2_MSG_EXT_INFO ;
 int SSH2_MSG_USERAUTH_BANNER ;
 int SSH2_MSG_USERAUTH_FAILURE ;
 int SSH2_MSG_USERAUTH_SUCCESS ;
 int debug (char*) ;
 int debug2 (char*,...) ;
 int free (char*) ;
 int input_userauth_banner ;
 int input_userauth_error ;
 int input_userauth_failure ;
 int input_userauth_success ;
 int ssh_dispatch_set (struct ssh*,int ,int *) ;
 scalar_t__ ssh_packet_remaining (struct ssh*) ;
 int sshpkt_get_cstring (struct ssh*,char**,int *) ;
 int sshpkt_get_end (struct ssh*) ;
 int userauth_none (int *) ;

int
input_userauth_service_accept(int type, u_int32_t seq, struct ssh *ssh)
{
 Authctxt *authctxt = ssh->authctxt;
 int r;

 if (ssh_packet_remaining(ssh) > 0) {
  char *reply;

  if ((r = sshpkt_get_cstring(ssh, &reply, ((void*)0))) != 0)
   goto out;
  debug2("service_accept: %s", reply);
  free(reply);
 } else {
  debug2("buggy server: service_accept w/o service");
 }
 if ((r = sshpkt_get_end(ssh)) != 0)
  goto out;
 debug("SSH2_MSG_SERVICE_ACCEPT received");


 userauth_none(authctxt);

 ssh_dispatch_set(ssh, SSH2_MSG_EXT_INFO, &input_userauth_error);
 ssh_dispatch_set(ssh, SSH2_MSG_USERAUTH_SUCCESS, &input_userauth_success);
 ssh_dispatch_set(ssh, SSH2_MSG_USERAUTH_FAILURE, &input_userauth_failure);
 ssh_dispatch_set(ssh, SSH2_MSG_USERAUTH_BANNER, &input_userauth_banner);
 r = 0;
 out:
 return r;
}
