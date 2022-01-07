
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int krb5_principal ;
typedef int krb5_key_data ;
typedef int kadm5_ret_t ;
struct TYPE_2__ {int context; } ;
typedef TYPE_1__ kadm5_ad_context ;


 int KADM5_RPC_ERROR ;
 int krb5_set_error_message (int ,int ,char*) ;

__attribute__((used)) static kadm5_ret_t
kadm5_ad_chpass_principal_with_key(void *server_handle,
       krb5_principal princ,
       int n_key_data,
       krb5_key_data *key_data)
{
    kadm5_ad_context *context = server_handle;
    krb5_set_error_message(context->context, KADM5_RPC_ERROR, "Function not implemented");
    return KADM5_RPC_ERROR;
}
