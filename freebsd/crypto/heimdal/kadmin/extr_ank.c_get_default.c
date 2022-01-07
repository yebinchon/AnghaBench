
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_const_realm ;
struct TYPE_4__ {int context; } ;
typedef TYPE_1__ kadm5_server_context ;
typedef int kadm5_principal_ent_t ;


 int KADM5_PRINCIPAL_NORMAL_MASK ;
 scalar_t__ kadm5_get_principal (TYPE_1__*,int ,int ,int ) ;
 int krb5_free_principal (int ,int ) ;
 scalar_t__ krb5_make_principal (int ,int *,int ,char*,int *) ;
 int krb5_principal_get_realm (int ,int ) ;

__attribute__((used)) static krb5_error_code
get_default (kadm5_server_context *contextp,
      krb5_principal princ,
      kadm5_principal_ent_t default_ent)
{
    krb5_error_code ret;
    krb5_principal def_principal;
    krb5_const_realm realm = krb5_principal_get_realm(contextp->context, princ);

    ret = krb5_make_principal (contextp->context, &def_principal,
          realm, "default", ((void*)0));
    if (ret)
 return ret;
    ret = kadm5_get_principal (contextp, def_principal, default_ent,
          KADM5_PRINCIPAL_NORMAL_MASK);
    krb5_free_principal (contextp->context, def_principal);
    return ret;
}
