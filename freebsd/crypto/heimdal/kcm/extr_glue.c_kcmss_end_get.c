
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_ccache ;
typedef int * krb5_cc_cursor ;



__attribute__((used)) static krb5_error_code
kcmss_end_get (krb5_context context,
        krb5_ccache id,
        krb5_cc_cursor *cursor)
{
    *cursor = ((void*)0);
    return 0;
}
