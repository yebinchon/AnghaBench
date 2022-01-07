
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_ccache ;


 int KRB5_FCC_INTERNAL ;

__attribute__((used)) static krb5_error_code
kcmss_resolve(krb5_context context, krb5_ccache *id, const char *res)
{
    return KRB5_FCC_INTERNAL;
}
