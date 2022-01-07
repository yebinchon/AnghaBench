
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
 scalar_t__ LDNS_RR_TYPE_A ;
 scalar_t__ LDNS_RR_TYPE_SOA ;
 scalar_t__ LDNS_STATUS_ERR ;
 scalar_t__ LDNS_STATUS_MEM_ERR ;
 scalar_t__ LDNS_STATUS_OK ;
 int * ldns_dname_new_frm_str (char const*) ;
 scalar_t__ ldns_pkt_ancount (int *) ;
 int ldns_pkt_answer (int *) ;
 int ldns_pkt_authority (int *) ;
 int ldns_pkt_free (int *) ;
 int * ldns_pkt_query_new (int *,scalar_t__,int ,int ) ;
 int ldns_pkt_set_random_id (int *) ;
 int * ldns_rdf_clone (int *) ;
 scalar_t__ ldns_rdf_compare (int *,int *) ;
 int * ldns_resolver_clone (int *) ;
 int ldns_resolver_free (int *) ;
 int ldns_resolver_nameserver_count (int *) ;
 int ** ldns_resolver_nameservers (int *) ;
 int ldns_resolver_push_nameserver (int *,int *) ;
 scalar_t__ ldns_resolver_send_pkt (int **,int *,int *) ;
 int ldns_resolver_set_random (int *,int) ;
 scalar_t__ ldns_rr_get_type (int *) ;
 int * ldns_rr_list_pop_rr (int ) ;
 int * ldns_rr_owner (int *) ;
 int * ldns_rr_rdf (int *,int ) ;

ldns_status
ldns_update_soa_zone_mname(const char *fqdn, ldns_resolver *r,
    ldns_rr_class c, ldns_rdf **zone_rdf, ldns_rdf **mname_rdf)
{
 ldns_rr *soa_rr, *rr;
 ldns_rdf *soa_zone = ((void*)0), *soa_mname = ((void*)0);
 ldns_rdf *ipaddr, *fqdn_rdf, *tmp;
 ldns_rdf **nslist;
 ldns_pkt *query, *resp;
 ldns_resolver *tmp_r;
 size_t i;







 fqdn_rdf = ldns_dname_new_frm_str(fqdn);
 query = ldns_pkt_query_new(fqdn_rdf, LDNS_RR_TYPE_SOA, c, LDNS_RD);
 if (!query) {
  return LDNS_STATUS_ERR;
 }
 fqdn_rdf = ((void*)0);

 ldns_pkt_set_random_id(query);
 if (ldns_resolver_send_pkt(&resp, r, query) != LDNS_STATUS_OK) {
  ldns_pkt_free(query);
  return LDNS_STATUS_ERR;
 }
 ldns_pkt_free(query);
 if (!resp) {
  return LDNS_STATUS_ERR;
 }


 while ((soa_rr = ldns_rr_list_pop_rr(ldns_pkt_authority(resp)))) {
  if (ldns_rr_get_type(soa_rr) != LDNS_RR_TYPE_SOA
    || ldns_rr_rdf(soa_rr, 0) == ((void*)0))
   continue;

  soa_mname = ldns_rdf_clone(ldns_rr_rdf(soa_rr, 0));
  break;
 }
 ldns_pkt_free(resp);
 if (!soa_rr) {
  return LDNS_STATUS_ERR;
 }


 query = ldns_pkt_query_new(soa_mname, LDNS_RR_TYPE_A, c, LDNS_RD);
 if (!query) {
  return LDNS_STATUS_ERR;
 }
 soa_mname = ((void*)0);

 ldns_pkt_set_random_id(query);
 if (ldns_resolver_send_pkt(&resp, r, query) != LDNS_STATUS_OK) {
  ldns_pkt_free(query);
  return LDNS_STATUS_ERR;
 }
 ldns_pkt_free(query);
 if (!resp) {
  return LDNS_STATUS_ERR;
 }

 if (ldns_pkt_ancount(resp) == 0) {
  ldns_pkt_free(resp);
  return LDNS_STATUS_ERR;
 }


 rr = ldns_rr_list_pop_rr(ldns_pkt_answer(resp));
 ipaddr = ldns_rr_rdf(rr, 0);


 if (!(tmp_r = ldns_resolver_clone(r))) {
  return LDNS_STATUS_MEM_ERR;
 }
 nslist = ldns_resolver_nameservers(tmp_r);
 for (i = 0; i < ldns_resolver_nameserver_count(tmp_r); i++) {
  if (ldns_rdf_compare(ipaddr, nslist[i]) == 0) {
   if (i) {
    tmp = nslist[0];
    nslist[0] = nslist[i];
    nslist[i] = tmp;
   }
   break;
  }
 }
 if (i >= ldns_resolver_nameserver_count(tmp_r)) {

  (void) ldns_resolver_push_nameserver(tmp_r, ipaddr);
  nslist = ldns_resolver_nameservers(tmp_r);
  i = ldns_resolver_nameserver_count(tmp_r) - 1;
  tmp = nslist[0];
  nslist[0] = nslist[i];
  nslist[i] = tmp;
 }
 ldns_pkt_free(resp);


 ldns_resolver_set_random(tmp_r, 0);


 fqdn_rdf = ldns_dname_new_frm_str(fqdn);
 query = ldns_pkt_query_new(fqdn_rdf, LDNS_RR_TYPE_SOA, c, LDNS_RD);
 if (!query) {
  ldns_resolver_free(tmp_r);
  return LDNS_STATUS_ERR;
 }
 fqdn_rdf = ((void*)0);

 ldns_pkt_set_random_id(query);
 if (ldns_resolver_send_pkt(&resp, tmp_r, query) != LDNS_STATUS_OK) {
  ldns_pkt_free(query);
  ldns_resolver_free(tmp_r);
  return LDNS_STATUS_ERR;
 }
 ldns_resolver_free(tmp_r);
 ldns_pkt_free(query);
 if (!resp) {
  return LDNS_STATUS_ERR;
 }


 while ((soa_rr = ldns_rr_list_pop_rr(ldns_pkt_authority(resp)))) {
  if (ldns_rr_get_type(soa_rr) != LDNS_RR_TYPE_SOA
    || ldns_rr_rdf(soa_rr, 0) == ((void*)0))
   continue;

  soa_mname = ldns_rdf_clone(ldns_rr_rdf(soa_rr, 0));
  soa_zone = ldns_rdf_clone(ldns_rr_owner(soa_rr));
  break;
 }
 ldns_pkt_free(resp);
 if (!soa_rr) {
  return LDNS_STATUS_ERR;
 }


 *zone_rdf = soa_zone;
 *mname_rdf = soa_mname;
 return LDNS_STATUS_OK;
}
