
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int krb5_principal ;
typedef int kadm5_ret_t ;
struct TYPE_6__ {int context; } ;
typedef TYPE_1__ kadm5_ad_context ;


 int CTX2LP (TYPE_1__*) ;
 int KADM5_RPC_ERROR ;
 int KADM5_UNK_PRINC ;
 int _kadm5_ad_connect (void*) ;
 scalar_t__ ad_find_entry (TYPE_1__*,char const*,char*,char**) ;
 int ad_get_cred (TYPE_1__*,int *) ;
 scalar_t__ check_ldap (TYPE_1__*,int) ;
 int free (char*) ;
 char* get_fqdn (int ,int ) ;
 int krb5_set_error_message (int ,int,char*) ;
 int krb5_unparse_name (int ,int ,char**) ;
 int ldap_delete_s (int ,char*) ;

__attribute__((used)) static kadm5_ret_t
kadm5_ad_delete_principal(void *server_handle, krb5_principal principal)
{
    kadm5_ad_context *context = server_handle;
    krb5_set_error_message(context->context, KADM5_RPC_ERROR, "Function not implemented");
    return KADM5_RPC_ERROR;

}
