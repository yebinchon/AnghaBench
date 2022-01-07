
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_rr_list ;
typedef int ldns_resolver ;


 int ldns_time (int *) ;
 int ldns_verify_trusted_time (int *,int *,int *,int ,int *) ;

ldns_status
ldns_verify_trusted(
  ldns_resolver *res,
  ldns_rr_list *rrset,
  ldns_rr_list * rrsigs,
  ldns_rr_list * validating_keys)
{
 return ldns_verify_trusted_time(
   res, rrset, rrsigs, ldns_time(((void*)0)), validating_keys);
}
