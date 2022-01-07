
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * krb5_keytab ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;


 int krb5_kt_close (int ,int *) ;
 scalar_t__ krb5_kt_have_content (int ,int *) ;
 scalar_t__ krb5_kt_resolve (int ,char const*,int **) ;

__attribute__((used)) static krb5_error_code
validate_keytab(krb5_context context, const char *name, krb5_keytab *id)
{
    krb5_error_code ret;

    ret = krb5_kt_resolve(context, name, id);
    if (ret)
 return ret;

    ret = krb5_kt_have_content(context, *id);
    if (ret) {
 krb5_kt_close(context, *id);
 *id = ((void*)0);
    }

    return ret;
}
