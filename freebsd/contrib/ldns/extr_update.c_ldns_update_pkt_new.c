
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int ldns_rr_list ;
typedef scalar_t__ ldns_rr_class ;
typedef int ldns_rdf ;
struct TYPE_11__ {int _additional; int _answer; int _authority; } ;
typedef TYPE_1__ ldns_pkt ;


 int LDNS_PACKET_UPDATE ;
 int LDNS_RD ;
 scalar_t__ LDNS_RR_CLASS_IN ;
 int LDNS_RR_TYPE_SOA ;
 TYPE_1__* ldns_pkt_query_new (int *,int ,scalar_t__,int ) ;
 int ldns_pkt_set_additional (TYPE_1__*,int ) ;
 int ldns_pkt_set_answer (TYPE_1__*,int ) ;
 int ldns_pkt_set_authority (TYPE_1__*,int ) ;
 int ldns_pkt_set_opcode (TYPE_1__*,int ) ;
 int ldns_rr_list_clone (int const*) ;
 int ldns_rr_list_deep_free (int ) ;
 int ldns_rr_list_rr_count (int const*) ;
 int ldns_update_set_adcount (TYPE_1__*,int ) ;
 int ldns_update_set_prcount (TYPE_1__*,int ) ;
 int ldns_update_set_upcount (TYPE_1__*,int ) ;

ldns_pkt *
ldns_update_pkt_new(ldns_rdf *zone_rdf, ldns_rr_class c,
    const ldns_rr_list *pr_rrlist, const ldns_rr_list *up_rrlist, const ldns_rr_list *ad_rrlist)
{
 ldns_pkt *p;

 if (!zone_rdf || !up_rrlist) {
  return ((void*)0);
 }

 if (c == 0) {
  c = LDNS_RR_CLASS_IN;
 }


 p = ldns_pkt_query_new(zone_rdf, LDNS_RR_TYPE_SOA, c, LDNS_RD);
 if (!p) {
  return ((void*)0);
 }
 zone_rdf = ((void*)0);

 ldns_pkt_set_opcode(p, LDNS_PACKET_UPDATE);

 ldns_rr_list_deep_free(p->_authority);

 ldns_pkt_set_authority(p, ldns_rr_list_clone(up_rrlist));

 ldns_update_set_upcount(p, ldns_rr_list_rr_count(up_rrlist));

 if (pr_rrlist) {
  ldns_rr_list_deep_free(p->_answer);
  ldns_pkt_set_answer(p, ldns_rr_list_clone(pr_rrlist));
  ldns_update_set_prcount(p, ldns_rr_list_rr_count(pr_rrlist));
 }

 if (ad_rrlist) {
  ldns_rr_list_deep_free(p->_additional);
  ldns_pkt_set_additional(p, ldns_rr_list_clone(ad_rrlist));
  ldns_update_set_adcount(p, ldns_rr_list_rr_count(ad_rrlist));
 }
 return p;
}
