
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_resolver ;
typedef int FILE ;


 int ldns_resolver_new_frm_fp_l (int **,int *,int *) ;

ldns_status
ldns_resolver_new_frm_fp(ldns_resolver **res, FILE *fp)
{
 return ldns_resolver_new_frm_fp_l(res, fp, ((void*)0));
}
