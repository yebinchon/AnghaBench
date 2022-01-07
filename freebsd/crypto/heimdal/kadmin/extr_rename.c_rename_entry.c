
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;


 int context ;
 scalar_t__ kadm5_rename_principal (int ,int ,int ) ;
 int kadm_handle ;
 int krb5_free_principal (int ,int ) ;
 scalar_t__ krb5_parse_name (int ,char*,int *) ;
 int krb5_warn (int ,scalar_t__,char*,...) ;

int
rename_entry(void *opt, int argc, char **argv)
{
    krb5_error_code ret;
    krb5_principal princ1, princ2;

    ret = krb5_parse_name(context, argv[0], &princ1);
    if(ret){
 krb5_warn(context, ret, "krb5_parse_name(%s)", argv[0]);
 return ret != 0;
    }
    ret = krb5_parse_name(context, argv[1], &princ2);
    if(ret){
 krb5_free_principal(context, princ1);
 krb5_warn(context, ret, "krb5_parse_name(%s)", argv[1]);
 return ret != 0;
    }
    ret = kadm5_rename_principal(kadm_handle, princ1, princ2);
    if(ret)
 krb5_warn(context, ret, "rename");
    krb5_free_principal(context, princ1);
    krb5_free_principal(context, princ2);
    return ret != 0;
}
