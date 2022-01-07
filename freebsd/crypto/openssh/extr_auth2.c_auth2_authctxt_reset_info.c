
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * auth_method_info; int * auth_method_key; } ;
typedef TYPE_1__ Authctxt ;


 int free (int *) ;
 int sshkey_free (int *) ;

void auth2_authctxt_reset_info(Authctxt *authctxt)
{
 sshkey_free(authctxt->auth_method_key);
 free(authctxt->auth_method_info);
 authctxt->auth_method_key = ((void*)0);
 authctxt->auth_method_info = ((void*)0);
}
