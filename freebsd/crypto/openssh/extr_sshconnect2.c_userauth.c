
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct TYPE_8__ {char* methoddata; char* authlist; TYPE_1__* method; int host; int server_user; } ;
struct TYPE_7__ {scalar_t__ (* userauth ) (TYPE_2__*) ;int * enabled; int name; int (* cleanup ) (TYPE_2__*) ;} ;
typedef TYPE_1__ Authmethod ;
typedef TYPE_2__ Authctxt ;


 int SSH2_MSG_USERAUTH_PER_METHOD_MAX ;
 int SSH2_MSG_USERAUTH_PER_METHOD_MIN ;
 struct ssh* active_state ;
 TYPE_1__* authmethod_get (char*) ;
 int debug2 (char*,...) ;
 int fatal (char*,int ,int ,char*) ;
 int free (char*) ;
 int ssh_dispatch_range (struct ssh*,int ,int ,int *) ;
 int stub1 (TYPE_2__*) ;
 scalar_t__ stub2 (TYPE_2__*) ;

void
userauth(Authctxt *authctxt, char *authlist)
{
 struct ssh *ssh = active_state;

 if (authctxt->method != ((void*)0) && authctxt->method->cleanup != ((void*)0))
  authctxt->method->cleanup(authctxt);

 free(authctxt->methoddata);
 authctxt->methoddata = ((void*)0);
 if (authlist == ((void*)0)) {
  authlist = authctxt->authlist;
 } else {
  free(authctxt->authlist);
  authctxt->authlist = authlist;
 }
 for (;;) {
  Authmethod *method = authmethod_get(authlist);
  if (method == ((void*)0))
   fatal("%s@%s: Permission denied (%s).",
       authctxt->server_user, authctxt->host, authlist);
  authctxt->method = method;


  ssh_dispatch_range(ssh, SSH2_MSG_USERAUTH_PER_METHOD_MIN,
      SSH2_MSG_USERAUTH_PER_METHOD_MAX, ((void*)0));


  if (method->userauth(authctxt) != 0) {
   debug2("we sent a %s packet, wait for reply", method->name);
   break;
  } else {
   debug2("we did not send a packet, disable method");
   method->enabled = ((void*)0);
  }
 }
}
