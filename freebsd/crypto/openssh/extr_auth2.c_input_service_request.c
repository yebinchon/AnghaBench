
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int u_int ;
struct ssh {TYPE_1__* authctxt; } ;
struct TYPE_2__ {int success; } ;
typedef TYPE_1__ Authctxt ;


 int SSH2_MSG_SERVICE_ACCEPT ;
 int SSH2_MSG_USERAUTH_REQUEST ;
 int debug (char*,char*) ;
 int fatal (char*) ;
 int free (char*) ;
 int input_userauth_request ;
 int packet_check_eom () ;
 int packet_disconnect (char*,char*) ;
 char* packet_get_cstring (int *) ;
 int packet_put_cstring (char*) ;
 int packet_send () ;
 int packet_start (int ) ;
 int packet_write_wait () ;
 int ssh_dispatch_set (struct ssh*,int ,int *) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
input_service_request(int type, u_int32_t seq, struct ssh *ssh)
{
 Authctxt *authctxt = ssh->authctxt;
 u_int len;
 int acceptit = 0;
 char *service = packet_get_cstring(&len);
 packet_check_eom();

 if (authctxt == ((void*)0))
  fatal("input_service_request: no authctxt");

 if (strcmp(service, "ssh-userauth") == 0) {
  if (!authctxt->success) {
   acceptit = 1;

   ssh_dispatch_set(ssh, SSH2_MSG_USERAUTH_REQUEST, &input_userauth_request);
  }
 }


 if (acceptit) {
  packet_start(SSH2_MSG_SERVICE_ACCEPT);
  packet_put_cstring(service);
  packet_send();
  packet_write_wait();
 } else {
  debug("bad service request %s", service);
  packet_disconnect("bad service request %s", service);
 }
 free(service);
 return 0;
}
