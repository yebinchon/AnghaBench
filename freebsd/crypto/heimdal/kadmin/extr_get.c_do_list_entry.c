
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
typedef int buf ;


 int context ;
 scalar_t__ krb5_unparse_name_fixed_short (int ,int ,char*,int) ;
 int printf (char*,char*) ;

__attribute__((used)) static int
do_list_entry(krb5_principal principal, void *data)
{
    char buf[1024];
    krb5_error_code ret;

    ret = krb5_unparse_name_fixed_short(context, principal, buf, sizeof(buf));
    if (ret != 0)
        return ret;
    printf("%s\n", buf);
    return 0;
}
