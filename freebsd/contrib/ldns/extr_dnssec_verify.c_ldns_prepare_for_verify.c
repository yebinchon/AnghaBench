
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ldns_status ;
typedef int ldns_rr_list ;
typedef int ldns_rr ;
typedef int ldns_buffer ;


 scalar_t__ LDNS_STATUS_CRYPTO_TYPE_COVERED_ERR ;
 scalar_t__ LDNS_STATUS_MEM_ERR ;
 scalar_t__ LDNS_STATUS_OK ;
 int ldns_dname2canonical (int ) ;
 scalar_t__ ldns_rdf2rr_type (int ) ;
 scalar_t__ ldns_rr_get_type (int ) ;
 scalar_t__ ldns_rr_list2buffer_wire (int *,int *) ;
 int ldns_rr_list_rr (int *,int ) ;
 int ldns_rr_list_sort (int *) ;
 int ldns_rr_owner (int const*) ;
 int ldns_rr_rrsig_typecovered (int const*) ;
 int ldns_rrset_use_signature_ttl (int *,int const*) ;
 scalar_t__ ldns_rrsig2buffer_wire (int *,int const*) ;
 scalar_t__ ldns_rrsig2rawsig_buffer (int *,int const*) ;

__attribute__((used)) static ldns_status
ldns_prepare_for_verify(ldns_buffer* rawsig_buf, ldns_buffer* verify_buf,
 ldns_rr_list* rrset_clone, const ldns_rr* rrsig)
{
 ldns_status result;


 ldns_dname2canonical(ldns_rr_owner(rrsig));


 if (ldns_rdf2rr_type(ldns_rr_rrsig_typecovered(rrsig)) !=
     ldns_rr_get_type(ldns_rr_list_rr(rrset_clone, 0)))
  return LDNS_STATUS_CRYPTO_TYPE_COVERED_ERR;


 result = ldns_rrsig2rawsig_buffer(rawsig_buf, rrsig);
 if(result != LDNS_STATUS_OK)
  return result;



 ldns_rrset_use_signature_ttl(rrset_clone, rrsig);


 ldns_rr_list_sort(rrset_clone);


 if (ldns_rrsig2buffer_wire(verify_buf, rrsig) != LDNS_STATUS_OK)
  return LDNS_STATUS_MEM_ERR;


 if(ldns_rr_list2buffer_wire(verify_buf, rrset_clone)
  != LDNS_STATUS_OK)
  return LDNS_STATUS_MEM_ERR;

 return LDNS_STATUS_OK;
}
