
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef scalar_t__ ldns_status ;
typedef int ldns_rr_type ;
typedef int ldns_rr_class ;
typedef int ldns_resolver ;
typedef int ldns_rdf ;
typedef int ldns_pkt ;


 scalar_t__ LDNS_RDF_TYPE_DNAME ;
 int LDNS_RR_CLASS_IN ;
 int LDNS_RR_TYPE_A ;
 scalar_t__ LDNS_STATUS_CRYPTO_TSIG_ERR ;
 scalar_t__ LDNS_STATUS_OK ;
 scalar_t__ LDNS_STATUS_RES_NO_NS ;
 scalar_t__ LDNS_STATUS_RES_QUERY ;
 int assert (int ) ;
 int ldns_pkt_free (int *) ;
 scalar_t__ ldns_pkt_tsig_sign (int *,scalar_t__,scalar_t__,int,int ,int *) ;
 scalar_t__ ldns_rdf_get_type (int const*) ;
 scalar_t__ ldns_resolver_nameserver_count (int *) ;
 scalar_t__ ldns_resolver_prepare_query_pkt (int **,int *,int const*,int ,int ,int ) ;
 scalar_t__ ldns_resolver_send_pkt (int **,int *,int *) ;
 int ldns_resolver_tsig_algorithm (int *) ;
 scalar_t__ ldns_resolver_tsig_keydata (int *) ;
 scalar_t__ ldns_resolver_tsig_keyname (int *) ;

ldns_status
ldns_resolver_send(ldns_pkt **answer, ldns_resolver *r, const ldns_rdf *name,
  ldns_rr_type t, ldns_rr_class c, uint16_t flags)
{
 ldns_pkt *query_pkt;
 ldns_pkt *answer_pkt;
 ldns_status status;

 assert(r != ((void*)0));
 assert(name != ((void*)0));

 answer_pkt = ((void*)0);




 if (0 == t) {
  t= LDNS_RR_TYPE_A;
 }
 if (0 == c) {
  c= LDNS_RR_CLASS_IN;
 }
 if (0 == ldns_resolver_nameserver_count(r)) {
  return LDNS_STATUS_RES_NO_NS;
 }
 if (ldns_rdf_get_type(name) != LDNS_RDF_TYPE_DNAME) {
  return LDNS_STATUS_RES_QUERY;
 }

 status = ldns_resolver_prepare_query_pkt(&query_pkt, r, name,
                                          t, c, flags);
 if (status != LDNS_STATUS_OK) {
  return status;
 }







 if (ldns_resolver_tsig_keyname(r) && ldns_resolver_tsig_keydata(r)) {
  ldns_pkt_free(query_pkt);
         return LDNS_STATUS_CRYPTO_TSIG_ERR;

 }

 status = ldns_resolver_send_pkt(&answer_pkt, r, query_pkt);
 ldns_pkt_free(query_pkt);


 if (answer) {
  *answer = answer_pkt;
 }
 return status;
}
