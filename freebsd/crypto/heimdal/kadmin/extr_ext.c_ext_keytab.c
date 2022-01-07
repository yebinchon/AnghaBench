
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext_keytab_options {int * keytab_string; } ;
struct ext_keytab_data {int keytab; } ;
typedef scalar_t__ krb5_error_code ;


 int context ;
 int do_ext_keytab ;
 scalar_t__ foreach_principal (char*,int ,char*,struct ext_keytab_data*) ;
 int krb5_kt_close (int ,int ) ;
 scalar_t__ krb5_kt_default (int ,int *) ;
 scalar_t__ krb5_kt_resolve (int ,int *,int *) ;
 int krb5_warn (int ,scalar_t__,char*) ;

int
ext_keytab(struct ext_keytab_options *opt, int argc, char **argv)
{
    krb5_error_code ret;
    int i;
    struct ext_keytab_data data;

    if (opt->keytab_string == ((void*)0))
 ret = krb5_kt_default(context, &data.keytab);
    else
 ret = krb5_kt_resolve(context, opt->keytab_string, &data.keytab);

    if(ret){
 krb5_warn(context, ret, "krb5_kt_resolve");
 return 1;
    }

    for(i = 0; i < argc; i++) {
 ret = foreach_principal(argv[i], do_ext_keytab, "ext", &data);
 if (ret)
     break;
    }

    krb5_kt_close(context, data.keytab);

    return ret != 0;
}
