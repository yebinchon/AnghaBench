
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ ldns_status ;
typedef int ldns_rr_list ;
typedef int ldns_rr ;
typedef int ldns_rbtree_t ;
typedef int ldns_key_list ;
struct TYPE_16__ {TYPE_3__* soa; TYPE_2__* names; } ;
typedef TYPE_4__ ldns_dnssec_zone ;
struct TYPE_17__ {int * nsec; } ;
typedef TYPE_5__ ldns_dnssec_name ;
struct TYPE_15__ {int name; } ;
struct TYPE_14__ {TYPE_1__* root; } ;
struct TYPE_13__ {scalar_t__ data; } ;


 scalar_t__ LDNS_RR_TYPE_NSEC3 ;
 int LDNS_RR_TYPE_NSEC3PARAM ;
 scalar_t__ LDNS_STATUS_OK ;
 scalar_t__ ldns_dnssec_zone_add_empty_nonterminals (TYPE_4__*) ;
 scalar_t__ ldns_dnssec_zone_add_rr (TYPE_4__*,int *) ;
 scalar_t__ ldns_dnssec_zone_create_nsec3s_mkmap (TYPE_4__*,int *,int ,int ,int ,int ,int *,int **) ;
 scalar_t__ ldns_dnssec_zone_create_rrsigs_flg (TYPE_4__*,int *,int *,int (*) (ldns_rr*,void*),void*,int) ;
 int ldns_dnssec_zone_find_rrset (TYPE_4__*,int ,int ) ;
 scalar_t__ ldns_dnssec_zone_mark_glue (TYPE_4__*) ;
 int ldns_nsec3_add_param_rdfs (int *,int ,int ,int ,int ,int *) ;
 int ldns_rdf_clone (int ) ;
 int ldns_rdf_data (int ) ;
 scalar_t__ ldns_rr_get_type (int *) ;
 int ldns_rr_list_push_rr (int *,int *) ;
 int * ldns_rr_new_frm_type (int ) ;
 int ldns_rr_rdf (int *,int) ;
 int ldns_rr_set_owner (int *,int ) ;
 int ldns_set_bit (int ,int ,int ) ;

ldns_status
ldns_dnssec_zone_sign_nsec3_flg_mkmap(ldns_dnssec_zone *zone,
  ldns_rr_list *new_rrs,
  ldns_key_list *key_list,
  int (*func)(ldns_rr *, void *),
  void *arg,
  uint8_t algorithm,
  uint8_t flags,
  uint16_t iterations,
  uint8_t salt_length,
  uint8_t *salt,
  int signflags,
  ldns_rbtree_t **map)
{
 ldns_rr *nsec3, *nsec3param;
 ldns_status result = LDNS_STATUS_OK;


 result = ldns_dnssec_zone_mark_glue(zone);
 if (result != LDNS_STATUS_OK) {
  return result;
 }




 if (zone->names) {

  result = ldns_dnssec_zone_add_empty_nonterminals(zone);
  if (result != LDNS_STATUS_OK) {
   return result;
  }

  nsec3 = ((ldns_dnssec_name *)zone->names->root->data)->nsec;
  if (nsec3 && ldns_rr_get_type(nsec3) == LDNS_RR_TYPE_NSEC3) {

  } else {
   if (!ldns_dnssec_zone_find_rrset(zone,
            zone->soa->name,
            LDNS_RR_TYPE_NSEC3PARAM)) {

    nsec3param =
     ldns_rr_new_frm_type(LDNS_RR_TYPE_NSEC3PARAM);
    ldns_rr_set_owner(nsec3param,
          ldns_rdf_clone(zone->soa->name));
    ldns_nsec3_add_param_rdfs(nsec3param,
          algorithm,
          flags,
          iterations,
          salt_length,
          salt);



    ldns_set_bit(ldns_rdf_data(ldns_rr_rdf(nsec3param, 1)), 0, 0);
    result = ldns_dnssec_zone_add_rr(zone, nsec3param);
    if (result != LDNS_STATUS_OK) {
     return result;
    }
    ldns_rr_list_push_rr(new_rrs, nsec3param);
   }
   result = ldns_dnssec_zone_create_nsec3s_mkmap(zone,
           new_rrs,
           algorithm,
           flags,
           iterations,
           salt_length,
           salt,
           map);
   if (result != LDNS_STATUS_OK) {
    return result;
   }
  }

  result = ldns_dnssec_zone_create_rrsigs_flg(zone,
      new_rrs,
      key_list,
      func,
      arg,
      signflags);
 }

 return result;
}
