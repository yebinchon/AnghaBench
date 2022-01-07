
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 unsigned char* ldns_key_new_frm_fp_hmac_l (int *,int *,size_t*) ;

unsigned char *
ldns_key_new_frm_fp_hmac(FILE *f, size_t *hmac_size)
{
 return ldns_key_new_frm_fp_hmac_l(f, ((void*)0), hmac_size);
}
