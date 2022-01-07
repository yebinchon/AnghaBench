
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_error_code ;
typedef int krb5_enctype ;
typedef int krb5_context ;


 int copy_enctypes (int ,int const*,int **) ;
 int * krb5_kerberos_enctypes (int ) ;

__attribute__((used)) static krb5_error_code
default_etypes(krb5_context context, krb5_enctype **etype)
{
    const krb5_enctype *p = krb5_kerberos_enctypes(context);
    return copy_enctypes(context, p, etype);
}
