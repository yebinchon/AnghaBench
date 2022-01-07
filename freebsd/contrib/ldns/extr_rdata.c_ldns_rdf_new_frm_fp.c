
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_rdf_type ;
typedef int ldns_rdf ;
typedef int FILE ;


 int ldns_rdf_new_frm_fp_l (int **,int ,int *,int *) ;

ldns_status
ldns_rdf_new_frm_fp(ldns_rdf **rdf, ldns_rdf_type type, FILE *fp)
{
 return ldns_rdf_new_frm_fp_l(rdf, type, fp, ((void*)0));
}
