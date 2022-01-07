
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RSA ;
typedef int FILE ;


 int * ldns_key_new_frm_fp_rsa_l (int *,int *) ;

RSA *
ldns_key_new_frm_fp_rsa(FILE *f)
{
 return ldns_key_new_frm_fp_rsa_l(f, ((void*)0));
}
