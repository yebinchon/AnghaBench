
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int Key ;


 int hdb_free_keys (int ,size_t,int *) ;
 scalar_t__ hdb_generate_key_set (int ,int ,int **,size_t*,int) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int print_keys (int ,int *,size_t) ;

__attribute__((used)) static void
parse_file(krb5_context context, krb5_principal principal, int no_salt)
{
    krb5_error_code ret;
    size_t nkeys;
    Key *keys;

    ret = hdb_generate_key_set(context, principal, &keys, &nkeys, no_salt);
    if (ret)
 krb5_err(context, 1, ret, "hdb_generate_key_set");

    print_keys(context, keys, nkeys);

    hdb_free_keys(context, nkeys, keys);
}
