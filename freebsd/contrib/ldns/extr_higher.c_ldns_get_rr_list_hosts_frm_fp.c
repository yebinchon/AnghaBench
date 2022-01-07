
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr_list ;
typedef int FILE ;


 int * ldns_get_rr_list_hosts_frm_fp_l (int *,int *) ;

ldns_rr_list *
ldns_get_rr_list_hosts_frm_fp(FILE *fp)
{
 return ldns_get_rr_list_hosts_frm_fp_l(fp, ((void*)0));
}
