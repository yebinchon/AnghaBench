
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ldns_status ;
typedef int ldns_rr_class ;
typedef int ldns_rr ;
typedef int ldns_resolver ;
typedef int ldns_rdf ;
typedef int ldns_pkt ;


 int LDNS_RD ;
 scalar_t__ LDNS_RR_TYPE_SOA ;
 scalar_t__ LDNS_STATUS_ERR ;
 scalar_t__ LDNS_STATUS_OK ;
 int ldns_pkt_answer (int *) ;
 int ldns_pkt_free (int *) ;
 int * ldns_pkt_query_new (int *,scalar_t__,int ,int ) ;
 int ldns_pkt_set_random_id (int *) ;
 int * ldns_rdf_clone (int *) ;
 scalar_t__ ldns_resolver_send_pkt (int **,int *,int *) ;
 scalar_t__ ldns_rr_get_type (int *) ;
 int * ldns_rr_list_pop_rr (int ) ;
 int * ldns_rr_rdf (int *,int ) ;

ldns_status
ldns_update_soa_mname(ldns_rdf *zone, ldns_resolver *r,
    ldns_rr_class c, ldns_rdf **mname)
{
 ldns_rr *soa_rr;
 ldns_pkt *query, *resp;


 query = ldns_pkt_query_new(ldns_rdf_clone(zone), LDNS_RR_TYPE_SOA,
     c, LDNS_RD);
 if (!query) {
  return LDNS_STATUS_ERR;
 }

 ldns_pkt_set_random_id(query);
 if (ldns_resolver_send_pkt(&resp, r, query) != LDNS_STATUS_OK) {
  ldns_pkt_free(query);
  return LDNS_STATUS_ERR;
 }
 ldns_pkt_free(query);
 if (!resp) {
  return LDNS_STATUS_ERR;
 }


 *mname = ((void*)0);
 while ((soa_rr = ldns_rr_list_pop_rr(ldns_pkt_answer(resp)))) {
  if (ldns_rr_get_type(soa_rr) != LDNS_RR_TYPE_SOA
    || ldns_rr_rdf(soa_rr, 0) == ((void*)0))
   continue;

  *mname = ldns_rdf_clone(ldns_rr_rdf(soa_rr, 0));
  break;
 }
 ldns_pkt_free(resp);

 return *mname ? LDNS_STATUS_OK : LDNS_STATUS_ERR;
}
