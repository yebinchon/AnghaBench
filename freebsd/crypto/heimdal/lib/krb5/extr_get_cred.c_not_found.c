
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_const_principal ;


 int N_ (char*,char*) ;
 int free (char*) ;
 int krb5_clear_error_message (int ) ;
 int krb5_set_error_message (int ,int,int ,char*) ;
 int krb5_unparse_name (int ,int ,char**) ;

__attribute__((used)) static int
not_found(krb5_context context, krb5_const_principal p, krb5_error_code code)
{
    krb5_error_code ret;
    char *str;

    ret = krb5_unparse_name(context, p, &str);
    if(ret) {
 krb5_clear_error_message(context);
 return code;
    }
    krb5_set_error_message(context, code,
      N_("Matching credential (%s) not found", ""), str);
    free(str);
    return code;
}
