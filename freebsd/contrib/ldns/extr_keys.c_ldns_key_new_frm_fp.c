
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_key ;
typedef int FILE ;


 int ldns_key_new_frm_fp_l (int **,int *,int *) ;

ldns_status
ldns_key_new_frm_fp(ldns_key **k, FILE *fp)
{
 return ldns_key_new_frm_fp_l(k, fp, ((void*)0));
}
