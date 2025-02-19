
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ssh {TYPE_3__* authctxt; } ;
struct TYPE_9__ {int postponed; TYPE_2__* kbdintctxt; } ;
struct TYPE_8__ {char* devices; TYPE_1__* device; int * ctxt; } ;
struct TYPE_7__ {int * (* init_ctx ) (TYPE_3__*) ;int name; } ;
typedef TYPE_2__ KbdintAuthctxt ;
typedef TYPE_3__ Authctxt ;


 int SSH2_MSG_USERAUTH_INFO_RESPONSE ;
 int auth2_challenge_stop (struct ssh*) ;
 int debug (char*,int ) ;
 int debug2 (char*,char*) ;
 int input_userauth_info_response ;
 scalar_t__ kbdint_next_device (TYPE_3__*,TYPE_2__*) ;
 scalar_t__ send_userauth_info_request (struct ssh*) ;
 int ssh_dispatch_set (struct ssh*,int ,int *) ;
 int * stub1 (TYPE_3__*) ;

__attribute__((used)) static int
auth2_challenge_start(struct ssh *ssh)
{
 Authctxt *authctxt = ssh->authctxt;
 KbdintAuthctxt *kbdintctxt = authctxt->kbdintctxt;

 debug2("auth2_challenge_start: devices %s",
     kbdintctxt->devices ? kbdintctxt->devices : "<empty>");

 if (kbdint_next_device(authctxt, kbdintctxt) == 0) {
  auth2_challenge_stop(ssh);
  return 0;
 }
 debug("auth2_challenge_start: trying authentication method '%s'",
     kbdintctxt->device->name);

 if ((kbdintctxt->ctxt = kbdintctxt->device->init_ctx(authctxt)) == ((void*)0)) {
  auth2_challenge_stop(ssh);
  return 0;
 }
 if (send_userauth_info_request(ssh) == 0) {
  auth2_challenge_stop(ssh);
  return 0;
 }
 ssh_dispatch_set(ssh, SSH2_MSG_USERAUTH_INFO_RESPONSE,
     &input_userauth_info_response);

 authctxt->postponed = 1;
 return 0;
}
