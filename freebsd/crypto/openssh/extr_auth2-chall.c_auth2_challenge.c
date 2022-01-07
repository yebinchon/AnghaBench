
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {TYPE_1__* authctxt; } ;
struct TYPE_2__ {char* user; int * kbdintctxt; } ;
typedef TYPE_1__ Authctxt ;


 int auth2_challenge_start (struct ssh*) ;
 int debug (char*,char*,char*) ;
 int * kbdint_alloc (char*) ;

int
auth2_challenge(struct ssh *ssh, char *devs)
{
 Authctxt *authctxt = ssh->authctxt;
 debug("auth2_challenge: user=%s devs=%s",
     authctxt->user ? authctxt->user : "<nouser>",
     devs ? devs : "<no devs>");

 if (authctxt->user == ((void*)0) || !devs)
  return 0;
 if (authctxt->kbdintctxt == ((void*)0))
  authctxt->kbdintctxt = kbdint_alloc(devs);
 return auth2_challenge_start(ssh);
}
