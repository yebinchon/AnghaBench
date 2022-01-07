
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ ldns_status ;
typedef scalar_t__ ldns_rr_type ;
typedef int ldns_rr ;
typedef int ldns_rdf ;
struct TYPE_7__ {scalar_t__ type; struct TYPE_7__* next; } ;
typedef TYPE_1__ ldns_dnssec_rrsets ;
struct TYPE_8__ {scalar_t__ hashed_name; TYPE_1__* rrsets; } ;
typedef TYPE_2__ ldns_dnssec_name ;


 scalar_t__ LDNS_RR_TYPE_DS ;
 scalar_t__ LDNS_RR_TYPE_NS ;
 int LDNS_RR_TYPE_NSEC3 ;
 scalar_t__ LDNS_RR_TYPE_RRSIG ;
 scalar_t__ LDNS_RR_TYPE_SOA ;
 scalar_t__ LDNS_STATUS_OK ;
 scalar_t__ ldns_dname_cat (int ,int const*) ;
 int ldns_dnssec_create_nsec_bitmap (scalar_t__*,size_t,int ) ;
 int ldns_dnssec_name_name (TYPE_2__ const*) ;
 scalar_t__ ldns_dnssec_rrsets_contains_type (TYPE_1__*,scalar_t__) ;
 int ldns_nsec3_add_param_rdfs (int *,int ,int ,int ,int ,int const*) ;
 int ldns_nsec3_hash_name (int ,int ,int ,int ,int const*) ;
 int * ldns_rdf_clone (scalar_t__) ;
 int ldns_rr_free (int *) ;
 int * ldns_rr_new_frm_type (int ) ;
 int ldns_rr_owner (int *) ;
 int ldns_rr_push_rdf (int *,int ) ;
 int ldns_rr_set_owner (int *,int ) ;
 int ldns_rr_set_rdf (int *,int *,int) ;

ldns_rr *
ldns_dnssec_create_nsec3(const ldns_dnssec_name *from,
     const ldns_dnssec_name *to,
     const ldns_rdf *zone_name,
     uint8_t algorithm,
     uint8_t flags,
     uint16_t iterations,
     uint8_t salt_length,
     const uint8_t *salt)
{
 ldns_rr *nsec_rr;
 ldns_rr_type types[65536];
 size_t type_count = 0;
 ldns_dnssec_rrsets *cur_rrsets;
 ldns_status status;
 int on_delegation_point;

 if (!from) {
  return ((void*)0);
 }

 nsec_rr = ldns_rr_new_frm_type(LDNS_RR_TYPE_NSEC3);
 ldns_rr_set_owner(nsec_rr,
                   ldns_nsec3_hash_name(ldns_dnssec_name_name(from),
                   algorithm,
                   iterations,
                   salt_length,
                   salt));
 status = ldns_dname_cat(ldns_rr_owner(nsec_rr), zone_name);
        if(status != LDNS_STATUS_OK) {
                ldns_rr_free(nsec_rr);
                return ((void*)0);
        }
 ldns_nsec3_add_param_rdfs(nsec_rr,
                           algorithm,
                           flags,
                           iterations,
                           salt_length,
                           salt);

 on_delegation_point = ldns_dnssec_rrsets_contains_type(
   from->rrsets, LDNS_RR_TYPE_NS)
  && !ldns_dnssec_rrsets_contains_type(
   from->rrsets, LDNS_RR_TYPE_SOA);
 cur_rrsets = from->rrsets;
 while (cur_rrsets) {






  if ((on_delegation_point && (
    cur_rrsets->type == LDNS_RR_TYPE_NS
        || cur_rrsets->type == LDNS_RR_TYPE_DS))
   || (!on_delegation_point &&
    cur_rrsets->type != LDNS_RR_TYPE_RRSIG)) {

   types[type_count] = cur_rrsets->type;
   type_count++;
  }
  cur_rrsets = cur_rrsets->next;
 }



 if (type_count > 0 &&
     !(type_count == 1 && types[0] == LDNS_RR_TYPE_NS)) {
  types[type_count] = LDNS_RR_TYPE_RRSIG;
  type_count++;
 }


 if (to && to->hashed_name) {
  (void) ldns_rr_set_rdf(nsec_rr,
                         ldns_rdf_clone(to->hashed_name),
                         4);
 } else {
  (void) ldns_rr_set_rdf(nsec_rr, ((void*)0), 4);
 }

 ldns_rr_push_rdf(nsec_rr,
                  ldns_dnssec_create_nsec_bitmap(types,
                  type_count,
                  LDNS_RR_TYPE_NSEC3));

 return nsec_rr;
}
