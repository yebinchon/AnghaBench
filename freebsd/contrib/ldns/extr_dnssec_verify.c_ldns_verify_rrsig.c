
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_rr_list ;
typedef int ldns_rr ;


 int ldns_time (int *) ;
 int ldns_verify_rrsig_time (int *,int *,int *,int ) ;

ldns_status
ldns_verify_rrsig(ldns_rr_list *rrset, ldns_rr *rrsig, ldns_rr *key)
{
 return ldns_verify_rrsig_time(rrset, rrsig, key, ldns_time(((void*)0)));
}
