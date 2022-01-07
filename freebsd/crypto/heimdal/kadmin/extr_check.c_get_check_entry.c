
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
typedef int kadm5_principal_ent_rec ;


 int context ;
 scalar_t__ kadm5_get_principal (int ,int ,int *,int ) ;
 int kadm_handle ;
 int krb5_free_principal (int ,int ) ;
 scalar_t__ krb5_parse_name (int ,char const*,int *) ;
 int krb5_warn (int ,scalar_t__,char*,char const*) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int
get_check_entry(const char *name, kadm5_principal_ent_rec *ent)
{
    krb5_error_code ret;
    krb5_principal principal;

    ret = krb5_parse_name(context, name, &principal);
    if (ret) {
 krb5_warn(context, ret, "krb5_unparse_name: %s", name);
 return 1;
    }

    memset(ent, 0, sizeof(*ent));
    ret = kadm5_get_principal(kadm_handle, principal, ent, 0);
    krb5_free_principal(context, principal);
    if(ret)
 return 1;

    return 0;
}
