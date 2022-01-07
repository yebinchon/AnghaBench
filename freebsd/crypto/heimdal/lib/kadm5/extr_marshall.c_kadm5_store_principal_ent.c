
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_storage ;
typedef int kadm5_ret_t ;
typedef int kadm5_principal_ent_t ;


 int store_principal_ent (int *,int ,int ) ;

kadm5_ret_t
kadm5_store_principal_ent(krb5_storage *sp,
     kadm5_principal_ent_t princ)
{
    return store_principal_ent (sp, princ, ~0);
}
