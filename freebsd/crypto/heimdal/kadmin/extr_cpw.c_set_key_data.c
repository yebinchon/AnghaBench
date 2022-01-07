
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_principal ;
typedef int krb5_key_data ;
typedef int krb5_error_code ;


 int kadm5_chpass_principal_with_key (int ,int ,int,int *) ;
 int kadm_handle ;

__attribute__((used)) static int
set_key_data (krb5_principal principal, krb5_key_data *key_data)
{
    krb5_error_code ret;

    ret = kadm5_chpass_principal_with_key (kadm_handle, principal,
        3, key_data);
    return ret;
}
