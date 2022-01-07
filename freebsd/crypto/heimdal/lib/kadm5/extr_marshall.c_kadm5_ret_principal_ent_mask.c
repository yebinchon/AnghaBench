
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int krb5_storage ;
typedef int kadm5_ret_t ;
typedef int kadm5_principal_ent_t ;
typedef int int32_t ;


 int krb5_ret_int32 (int *,int *) ;
 int ret_principal_ent (int *,int ,int ) ;

kadm5_ret_t
kadm5_ret_principal_ent_mask(krb5_storage *sp,
        kadm5_principal_ent_t princ,
        uint32_t *mask)
{
    int32_t tmp;

    krb5_ret_int32 (sp, &tmp);
    *mask = tmp;
    return ret_principal_ent (sp, princ, *mask);
}
