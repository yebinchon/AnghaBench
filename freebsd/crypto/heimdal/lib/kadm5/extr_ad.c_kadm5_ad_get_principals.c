
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ kadm5_ret_t ;
struct TYPE_3__ {int context; } ;
typedef TYPE_1__ kadm5_ad_context ;


 scalar_t__ KADM5_RPC_ERROR ;
 scalar_t__ _kadm5_ad_connect (void*) ;
 scalar_t__ ad_get_cred (TYPE_1__*,int *) ;
 int krb5_set_error_message (int ,scalar_t__,char*) ;

__attribute__((used)) static kadm5_ret_t
kadm5_ad_get_principals(void *server_handle,
   const char *expression,
   char ***principals,
   int *count)
{
    kadm5_ad_context *context = server_handle;
    krb5_set_error_message(context->context, KADM5_RPC_ERROR, "Function not implemented");
    return KADM5_RPC_ERROR;

}
