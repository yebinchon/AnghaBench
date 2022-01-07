
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int krb5_storage ;
typedef int kadm5_ret_t ;
typedef int kadm5_principal_ent_t ;


 int krb5_store_int32 (int *,int ) ;
 int store_principal_ent (int *,int ,int ) ;

kadm5_ret_t
kadm5_store_principal_ent_mask(krb5_storage *sp,
          kadm5_principal_ent_t princ,
          uint32_t mask)
{
    krb5_store_int32(sp, mask);
    return store_principal_ent (sp, princ, mask);
}
