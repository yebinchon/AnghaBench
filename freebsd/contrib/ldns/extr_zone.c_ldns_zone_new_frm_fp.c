
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ldns_zone ;
typedef int ldns_status ;
typedef int ldns_rr_class ;
typedef int ldns_rdf ;
typedef int FILE ;


 int ldns_zone_new_frm_fp_l (int **,int *,int const*,int ,int ,int *) ;

ldns_status
ldns_zone_new_frm_fp(ldns_zone **z, FILE *fp, const ldns_rdf *origin, uint32_t ttl, ldns_rr_class c)
{
 return ldns_zone_new_frm_fp_l(z, fp, origin, ttl, c, ((void*)0));
}
