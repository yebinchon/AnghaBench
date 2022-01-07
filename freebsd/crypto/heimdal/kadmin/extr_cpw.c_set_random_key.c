
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_principal ;
typedef int krb5_keyblock ;
typedef int krb5_error_code ;


 int context ;
 int free (int *) ;
 int kadm5_randkey_principal (int ,int ,int **,int*) ;
 int kadm_handle ;
 int krb5_free_keyblock_contents (int ,int *) ;

__attribute__((used)) static int
set_random_key (krb5_principal principal)
{
    krb5_error_code ret;
    int i;
    krb5_keyblock *keys;
    int num_keys;

    ret = kadm5_randkey_principal(kadm_handle, principal, &keys, &num_keys);
    if(ret)
 return ret;
    for(i = 0; i < num_keys; i++)
 krb5_free_keyblock_contents(context, &keys[i]);
    free(keys);
    return 0;
}
