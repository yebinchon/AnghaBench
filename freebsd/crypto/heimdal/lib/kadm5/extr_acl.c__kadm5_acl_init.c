
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_4__ {int acl_flags; int context; int caller; } ;
typedef TYPE_1__ kadm5_server_context ;
typedef scalar_t__ kadm5_ret_t ;


 int KADM5_ADMIN_SERVICE ;
 int KADM5_PRIV_ALL ;
 scalar_t__ fetch_acl (TYPE_1__*,int *,int *) ;
 int krb5_free_principal (int ,int ) ;
 scalar_t__ krb5_parse_name (int ,int ,int *) ;
 scalar_t__ krb5_principal_compare (int ,int ,int ) ;

kadm5_ret_t
_kadm5_acl_init(kadm5_server_context *context)
{
    krb5_principal princ;
    krb5_error_code ret;

    ret = krb5_parse_name(context->context, KADM5_ADMIN_SERVICE, &princ);
    if (ret)
 return ret;
    ret = krb5_principal_compare(context->context, context->caller, princ);
    krb5_free_principal(context->context, princ);
    if(ret != 0) {
 context->acl_flags = KADM5_PRIV_ALL;
 return 0;
    }

    return fetch_acl (context, ((void*)0), &context->acl_flags);
}
