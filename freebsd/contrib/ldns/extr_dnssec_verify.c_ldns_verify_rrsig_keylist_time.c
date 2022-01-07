
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef scalar_t__ ldns_status ;
typedef int ldns_rr_list ;
typedef int ldns_rr ;


 scalar_t__ LDNS_STATUS_MEM_ERR ;
 scalar_t__ LDNS_STATUS_OK ;
 int ldns_rr_list_cat (int *,int *) ;
 int ldns_rr_list_free (int *) ;
 int * ldns_rr_list_new () ;
 scalar_t__ ldns_rrsig_check_timestamps (int const*,int ) ;
 scalar_t__ ldns_verify_rrsig_keylist_notime (int const*,int const*,int const*,int *) ;

ldns_status
ldns_verify_rrsig_keylist_time(
  const ldns_rr_list *rrset,
  const ldns_rr *rrsig,
  const ldns_rr_list *keys,
  time_t check_time,
  ldns_rr_list *good_keys)
{
 ldns_status result;
 ldns_rr_list *valid = ldns_rr_list_new();
 if (!valid)
  return LDNS_STATUS_MEM_ERR;

 result = ldns_verify_rrsig_keylist_notime(rrset, rrsig, keys, valid);
 if(result != LDNS_STATUS_OK) {
  ldns_rr_list_free(valid);
  return result;
 }


 result = ldns_rrsig_check_timestamps(rrsig, check_time);
 if(result != LDNS_STATUS_OK) {
  ldns_rr_list_free(valid);
  return result;
 }

 ldns_rr_list_cat(good_keys, valid);
 ldns_rr_list_free(valid);
 return LDNS_STATUS_OK;
}
