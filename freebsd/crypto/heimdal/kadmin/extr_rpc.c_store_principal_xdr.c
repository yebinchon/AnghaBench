
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_storage ;
typedef int krb5_principal ;
typedef int krb5_context ;


 int CHECK (int ) ;
 int free (char*) ;
 int krb5_unparse_name (int ,int ,char**) ;
 int store_string_xdr (int *,char*) ;

__attribute__((used)) static int
store_principal_xdr(krb5_context contextp,
      krb5_storage *sp,
      krb5_principal p)
{
    char *str;
    CHECK(krb5_unparse_name(contextp, p, &str));
    CHECK(store_string_xdr(sp, str));
    free(str);
    return 0;
}
