
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ldns_rr_type ;
typedef int ldns_rr ;
struct TYPE_7__ {scalar_t__ type; struct TYPE_7__* next; } ;
typedef TYPE_1__ ldns_dnssec_rrsets ;
struct TYPE_8__ {TYPE_1__* rrsets; } ;
typedef TYPE_2__ ldns_dnssec_name ;


 scalar_t__ LDNS_RR_TYPE_DS ;
 scalar_t__ LDNS_RR_TYPE_NS ;
 scalar_t__ LDNS_RR_TYPE_NSEC ;
 scalar_t__ LDNS_RR_TYPE_RRSIG ;
 scalar_t__ LDNS_RR_TYPE_SOA ;
 int ldns_dnssec_create_nsec_bitmap (scalar_t__*,size_t,scalar_t__) ;
 int ldns_dnssec_name_name (TYPE_2__ const*) ;
 scalar_t__ ldns_dnssec_rrsets_contains_type (TYPE_1__*,scalar_t__) ;
 int ldns_rdf_clone (int ) ;
 int * ldns_rr_new () ;
 int ldns_rr_push_rdf (int *,int ) ;
 int ldns_rr_set_owner (int *,int ) ;
 int ldns_rr_set_type (int *,scalar_t__) ;

ldns_rr *
ldns_dnssec_create_nsec(const ldns_dnssec_name *from,
                        const ldns_dnssec_name *to,
                        ldns_rr_type nsec_type)
{
 ldns_rr *nsec_rr;
 ldns_rr_type types[65536];
 size_t type_count = 0;
 ldns_dnssec_rrsets *cur_rrsets;
 int on_delegation_point;

 if (!from || !to || (nsec_type != LDNS_RR_TYPE_NSEC)) {
  return ((void*)0);
 }

 nsec_rr = ldns_rr_new();
 ldns_rr_set_type(nsec_rr, nsec_type);
 ldns_rr_set_owner(nsec_rr, ldns_rdf_clone(ldns_dnssec_name_name(from)));
 ldns_rr_push_rdf(nsec_rr, ldns_rdf_clone(ldns_dnssec_name_name(to)));

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
    cur_rrsets->type != LDNS_RR_TYPE_RRSIG
        && cur_rrsets->type != LDNS_RR_TYPE_NSEC)) {

   types[type_count] = cur_rrsets->type;
   type_count++;
  }
  cur_rrsets = cur_rrsets->next;

 }
 types[type_count] = LDNS_RR_TYPE_RRSIG;
 type_count++;
 types[type_count] = LDNS_RR_TYPE_NSEC;
 type_count++;

 ldns_rr_push_rdf(nsec_rr, ldns_dnssec_create_nsec_bitmap(types,
                                type_count,
                                nsec_type));

 return nsec_rr;
}
