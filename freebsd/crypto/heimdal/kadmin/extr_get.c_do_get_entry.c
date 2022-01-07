
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct get_entry_data {int mask; int extra_mask; int (* format ) (struct get_entry_data*,int *) ;} ;
typedef int princ ;
typedef int krb5_principal ;
typedef int krb5_error_code ;
typedef int kadm5_principal_ent_rec ;


 int kadm5_free_principal_ent (int ,int *) ;
 int kadm5_get_principal (int ,int ,int *,int) ;
 int kadm_handle ;
 int memset (int *,int ,int) ;
 int stub1 (struct get_entry_data*,int *) ;

__attribute__((used)) static int
do_get_entry(krb5_principal principal, void *data)
{
    kadm5_principal_ent_rec princ;
    krb5_error_code ret;
    struct get_entry_data *e = data;

    memset(&princ, 0, sizeof(princ));
    ret = kadm5_get_principal(kadm_handle, principal,
         &princ,
         e->mask | e->extra_mask);
    if(ret)
 return ret;
    else {
 (e->format)(e, &princ);
 kadm5_free_principal_ent(kadm_handle, &princ);
    }
    return 0;
}
