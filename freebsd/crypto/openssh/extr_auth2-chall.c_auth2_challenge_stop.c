
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {TYPE_1__* authctxt; } ;
struct TYPE_2__ {int * kbdintctxt; } ;
typedef TYPE_1__ Authctxt ;


 int SSH2_MSG_USERAUTH_INFO_RESPONSE ;
 int kbdint_free (int *) ;
 int ssh_dispatch_set (struct ssh*,int ,int *) ;

void
auth2_challenge_stop(struct ssh *ssh)
{
 Authctxt *authctxt = ssh->authctxt;

 ssh_dispatch_set(ssh, SSH2_MSG_USERAUTH_INFO_RESPONSE, ((void*)0));
 if (authctxt->kbdintctxt != ((void*)0)) {
  kbdint_free(authctxt->kbdintctxt);
  authctxt->kbdintctxt = ((void*)0);
 }
}
