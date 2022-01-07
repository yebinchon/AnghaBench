
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct ssh {TYPE_2__* authctxt; } ;
struct TYPE_5__ {int success; int * methoddata; TYPE_1__* method; int * authlist; } ;
struct TYPE_4__ {int (* cleanup ) (TYPE_2__*) ;} ;
typedef TYPE_2__ Authctxt ;


 int fatal (char*) ;
 int free (int *) ;
 int stub1 (TYPE_2__*) ;

int
input_userauth_success(int type, u_int32_t seq, struct ssh *ssh)
{
 Authctxt *authctxt = ssh->authctxt;

 if (authctxt == ((void*)0))
  fatal("input_userauth_success: no authentication context");
 free(authctxt->authlist);
 authctxt->authlist = ((void*)0);
 if (authctxt->method != ((void*)0) && authctxt->method->cleanup != ((void*)0))
  authctxt->method->cleanup(authctxt);
 free(authctxt->methoddata);
 authctxt->methoddata = ((void*)0);
 authctxt->success = 1;
 return 0;
}
