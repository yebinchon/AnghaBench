
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ldns_rr_list ;
typedef int ldns_rr_class ;
typedef int ldns_resolver ;
typedef int ldns_rdf ;
typedef int ldns_dnssec_zone ;
struct TYPE_4__ {TYPE_2__* rrs; } ;
typedef TYPE_1__ ldns_dnssec_rrsets ;
struct TYPE_5__ {int rr; struct TYPE_5__* next; } ;
typedef TYPE_2__ ldns_dnssec_rrs ;


 int LDNS_RR_TYPE_A ;
 int LDNS_RR_TYPE_AAAA ;
 int LDNS_RR_TYPE_NS ;
 scalar_t__ LDNS_STATUS_OK ;
 int add_rr_list_to_referrals (int *,int *) ;
 int error (char*) ;
 int * ldns_dname_left_chop (int *) ;
 TYPE_1__* ldns_dnssec_zone_find_rrset (int *,int *,int ) ;
 int * ldns_get_rr_list_addr_by_name (int *,int *,int ,int ) ;
 int * ldns_rdf_clone (int *) ;
 int ldns_rdf_deep_free (int *) ;
 scalar_t__ ldns_resolver_nameserver_count (int *) ;
 int * ldns_resolver_pop_nameserver (int *) ;
 int ldns_resolver_push_nameserver (int *,int *) ;
 scalar_t__ ldns_resolver_push_nameserver_rr_list (int *,int *) ;
 int ldns_rr_list_cat (int *,int *) ;
 int ldns_rr_list_deep_free (int *) ;
 int ldns_rr_list_free (int *) ;
 int * ldns_rr_list_new () ;
 scalar_t__ ldns_rr_list_rr_count (int *) ;
 int * ldns_rr_rdf (int ,int ) ;

__attribute__((used)) static bool set_nss_for_name(
    ldns_resolver *res, ldns_dnssec_zone *referrals, ldns_rdf *name,
    ldns_resolver *local_res, ldns_rr_class c)
{
 ldns_dnssec_rrsets *nss = ((void*)0);
 ldns_dnssec_rrs *nss_rrs;
 ldns_dnssec_rrsets *as = ((void*)0);
 ldns_dnssec_rrs *as_rrs;
 ldns_rdf *lookup = ldns_rdf_clone(name);
 ldns_rdf *new_lookup;
 ldns_rdf *addr;
 ldns_rr_list *addrs;


 for (;;) {
  nss = ldns_dnssec_zone_find_rrset(
      referrals, lookup, LDNS_RR_TYPE_NS);
  if (nss != ((void*)0)) {
   ldns_rdf_deep_free(lookup);
   break;
  }
  new_lookup = ldns_dname_left_chop(lookup);
  ldns_rdf_deep_free(lookup);
  lookup = new_lookup;
  if (!lookup) {
   error("No referrals for name found");
   return 0;
  }
 }


 while ((addr = ldns_resolver_pop_nameserver(res)))
  ldns_rdf_deep_free(addr);


 for (nss_rrs = nss->rrs; nss_rrs; nss_rrs = nss_rrs->next) {

  if ((as = ldns_dnssec_zone_find_rrset(
      referrals, ldns_rr_rdf(nss_rrs->rr, 0), LDNS_RR_TYPE_A)))
   for (as_rrs = as->rrs; as_rrs; as_rrs = as_rrs->next)
    (void) ldns_resolver_push_nameserver(
        res, ldns_rr_rdf(as_rrs->rr, 0));

  if ((as = ldns_dnssec_zone_find_rrset(
      referrals, ldns_rr_rdf(nss_rrs->rr, 0), LDNS_RR_TYPE_AAAA)))
   for (as_rrs = as->rrs; as_rrs; as_rrs = as_rrs->next)
    (void) ldns_resolver_push_nameserver(
        res, ldns_rr_rdf(as_rrs->rr, 0));
 }

 if (ldns_resolver_nameserver_count(res) > 0)
  return 1;


 addrs = ldns_rr_list_new();
 for (nss_rrs = nss->rrs; nss_rrs; nss_rrs = nss_rrs->next) {
  ldns_rr_list *addrs_by_name =
      ldns_get_rr_list_addr_by_name(
   local_res, ldns_rr_rdf(nss_rrs->rr, 0), c, 0);
  ldns_rr_list_cat(addrs, addrs_by_name);
  ldns_rr_list_free(addrs_by_name);
 }

 if (ldns_rr_list_rr_count(addrs) == 0)
  error("Could not find the nameserver ip addr; abort");

 else if (ldns_resolver_push_nameserver_rr_list(res, addrs) !=
     LDNS_STATUS_OK)

  error("Error adding new nameservers");
 else {
  ldns_rr_list_deep_free(addrs);
  return 1;
 }
 add_rr_list_to_referrals(referrals, addrs);
 ldns_rr_list_deep_free(addrs);
 return 0;
}
