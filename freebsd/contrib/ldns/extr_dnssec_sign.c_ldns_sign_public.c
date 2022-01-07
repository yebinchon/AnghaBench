
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int ldns_rr_list ;
typedef int ldns_rr ;
typedef int ldns_rdf ;
typedef int ldns_key_list ;
typedef int ldns_key ;
typedef int ldns_buffer ;


 int LDNS_KEY_ZONE_KEY ;
 int LDNS_MAX_PACKETLEN ;
 scalar_t__ LDNS_STATUS_OK ;
 int ldns_buffer_free (int *) ;
 int * ldns_buffer_new (int ) ;
 int * ldns_create_empty_rrsig (int *,int *) ;
 int ldns_key_flags (int *) ;
 int * ldns_key_list_key (int *,size_t) ;
 size_t ldns_key_list_key_count (int *) ;
 int ldns_key_use (int *) ;
 int ldns_rdf_free (int *) ;
 int ldns_rr2canonical (int ) ;
 int ldns_rr_free (int *) ;
 scalar_t__ ldns_rr_list2buffer_wire (int *,int *) ;
 int * ldns_rr_list_clone (int *) ;
 int ldns_rr_list_deep_free (int *) ;
 int ldns_rr_list_free (int *) ;
 int * ldns_rr_list_new () ;
 int ldns_rr_list_push_rr (int *,int *) ;
 int ldns_rr_list_rr (int *,scalar_t__) ;
 scalar_t__ ldns_rr_list_rr_count (int *) ;
 int ldns_rr_list_sort (int *) ;
 int ldns_rr_rrsig_set_sig (int *,int *) ;
 int ldns_rr_set_ttl (int ,int ) ;
 int ldns_rr_ttl (int ) ;
 scalar_t__ ldns_rrsig2buffer_wire (int *,int *) ;
 int * ldns_sign_public_buffer (int *,int *) ;

ldns_rr_list *
ldns_sign_public(ldns_rr_list *rrset, ldns_key_list *keys)
{
 ldns_rr_list *signatures;
 ldns_rr_list *rrset_clone;
 ldns_rr *current_sig;
 ldns_rdf *b64rdf;
 ldns_key *current_key;
 size_t key_count;
 uint16_t i;
 ldns_buffer *sign_buf;
 ldns_rdf *new_owner;

 if (!rrset || ldns_rr_list_rr_count(rrset) < 1 || !keys) {
  return ((void*)0);
 }

 new_owner = ((void*)0);

 signatures = ldns_rr_list_new();



 rrset_clone = ldns_rr_list_clone(rrset);
 if (!rrset_clone) {
  return ((void*)0);
 }


 for(i = 0; i < ldns_rr_list_rr_count(rrset_clone); i++) {
  ldns_rr_set_ttl(ldns_rr_list_rr(rrset_clone, i),
   ldns_rr_ttl(ldns_rr_list_rr(rrset, 0)));
  ldns_rr2canonical(ldns_rr_list_rr(rrset_clone, i));
 }

 ldns_rr_list_sort(rrset_clone);

 for (key_count = 0;
  key_count < ldns_key_list_key_count(keys);
  key_count++) {
  if (!ldns_key_use(ldns_key_list_key(keys, key_count))) {
   continue;
  }
  sign_buf = ldns_buffer_new(LDNS_MAX_PACKETLEN);
  if (!sign_buf) {
   ldns_rr_list_free(rrset_clone);
   ldns_rr_list_free(signatures);
   ldns_rdf_free(new_owner);
   return ((void*)0);
  }
  b64rdf = ((void*)0);

  current_key = ldns_key_list_key(keys, key_count);


  if (ldns_key_flags(current_key) & LDNS_KEY_ZONE_KEY) {
   current_sig = ldns_create_empty_rrsig(rrset_clone,
                                         current_key);





   if (ldns_rrsig2buffer_wire(sign_buf, current_sig)
       != LDNS_STATUS_OK) {
    ldns_buffer_free(sign_buf);

    ldns_rr_list_deep_free(rrset_clone);
    ldns_rr_free(current_sig);
    ldns_rr_list_deep_free(signatures);
    return ((void*)0);
   }


   if (ldns_rr_list2buffer_wire(sign_buf, rrset_clone)
       != LDNS_STATUS_OK) {
    ldns_buffer_free(sign_buf);
    ldns_rr_list_deep_free(rrset_clone);
    ldns_rr_free(current_sig);
    ldns_rr_list_deep_free(signatures);
    return ((void*)0);
   }

   b64rdf = ldns_sign_public_buffer(sign_buf, current_key);

   if (!b64rdf) {

    ldns_rr_list_deep_free(rrset_clone);
    ldns_rr_free(current_sig);
    ldns_rr_list_deep_free(signatures);
    return ((void*)0);
   }

   ldns_rr_rrsig_set_sig(current_sig, b64rdf);


   ldns_rr_list_push_rr(signatures, current_sig);
  }
  ldns_buffer_free(sign_buf);
 }
 ldns_rr_list_deep_free(rrset_clone);

 return signatures;
}
