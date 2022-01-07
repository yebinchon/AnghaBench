
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef scalar_t__ ldns_status ;
typedef int ldns_rr_list ;
typedef int ldns_rr ;
typedef int ldns_buffer ;


 int LDNS_MAX_PACKETLEN ;
 scalar_t__ LDNS_STATUS_NO_DATA ;
 scalar_t__ LDNS_STATUS_OK ;
 int ldns_buffer_free (int *) ;
 int * ldns_buffer_new (int ) ;
 scalar_t__ ldns_prepare_for_verify (int *,int *,int *,int *) ;
 int * ldns_rr_list_clone (int *) ;
 int ldns_rr_list_deep_free (int *) ;
 scalar_t__ ldns_rrsig_check_timestamps (int *,int ) ;
 scalar_t__ ldns_verify_test_sig_key (int *,int *,int *,int *) ;

ldns_status
ldns_verify_rrsig_time(
  ldns_rr_list *rrset,
  ldns_rr *rrsig,
  ldns_rr *key,
  time_t check_time)
{
 ldns_buffer *rawsig_buf;
 ldns_buffer *verify_buf;
 ldns_status result;
 ldns_rr_list *rrset_clone;

 if (!rrset) {
  return LDNS_STATUS_NO_DATA;
 }

 rrset_clone = ldns_rr_list_clone(rrset);

 rawsig_buf = ldns_buffer_new(LDNS_MAX_PACKETLEN);
 verify_buf = ldns_buffer_new(LDNS_MAX_PACKETLEN);

 result = ldns_prepare_for_verify(rawsig_buf, verify_buf,
  rrset_clone, rrsig);
 if(result != LDNS_STATUS_OK) {
  ldns_rr_list_deep_free(rrset_clone);
  ldns_buffer_free(rawsig_buf);
  ldns_buffer_free(verify_buf);
  return result;
 }
 result = ldns_verify_test_sig_key(rawsig_buf, verify_buf,
  rrsig, key);

 ldns_rr_list_deep_free(rrset_clone);
 ldns_buffer_free(rawsig_buf);
 ldns_buffer_free(verify_buf);


 if(result == LDNS_STATUS_OK)
  result = ldns_rrsig_check_timestamps(rrsig, check_time);

 return result;
}
