
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef int DSA ;


 int * ldns_key_new_frm_fp_dsa_l (int *,int *) ;

DSA *
ldns_key_new_frm_fp_dsa(FILE *f)
{
 return ldns_key_new_frm_fp_dsa_l(f, ((void*)0));
}
