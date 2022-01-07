
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_options {int timestamp_flag; } ;
typedef int kt ;
typedef int krb5_error_code ;


 int context ;
 scalar_t__ do_list (struct list_options*,char*) ;
 char* keytab_string ;
 int krb5_kt_default_name (int ,char*,int) ;
 int krb5_warn (int ,int ,char*) ;
 scalar_t__ verbose_flag ;

int
kt_list(struct list_options *opt, int argc, char **argv)
{
    krb5_error_code ret;
    char kt[1024];

    if(verbose_flag)
 opt->timestamp_flag = 1;

    if (keytab_string == ((void*)0)) {
 if((ret = krb5_kt_default_name(context, kt, sizeof(kt))) != 0) {
     krb5_warn(context, ret, "getting default keytab name");
     return 1;
 }
 keytab_string = kt;
    }
    return do_list(opt, keytab_string) != 0;
}
