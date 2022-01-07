
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_rr_list ;


 int ldns_time (int *) ;
 int ldns_verify_time (int *,int *,int const*,int ,int *) ;

ldns_status
ldns_verify(ldns_rr_list *rrset, ldns_rr_list *rrsig, const ldns_rr_list *keys,
    ldns_rr_list *good_keys)
{
 return ldns_verify_time(rrset, rrsig, keys, ldns_time(((void*)0)), good_keys);
}
