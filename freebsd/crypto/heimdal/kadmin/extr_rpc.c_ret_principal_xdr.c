
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_storage ;
typedef int * krb5_principal ;
typedef int krb5_context ;


 int CHECK (int ) ;
 int free (char*) ;
 int krb5_parse_name (int ,char*,int **) ;
 int ret_string_xdr (int *,char**) ;

__attribute__((used)) static int
ret_principal_xdr(krb5_context contextp,
    krb5_storage *sp,
    krb5_principal *p)
{
    char *str;
    *p = ((void*)0);
    CHECK(ret_string_xdr(sp, &str));
    if (str) {
 CHECK(krb5_parse_name(contextp, str, p));
 free(str);
    }
    return 0;
}
