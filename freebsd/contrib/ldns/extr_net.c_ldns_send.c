
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_resolver ;
typedef int ldns_rdf ;
typedef int ldns_pkt ;
typedef int ldns_buffer ;


 int LDNS_MIN_BUFLEN ;
 int LDNS_STATUS_ERR ;
 scalar_t__ LDNS_STATUS_OK ;
 int ldns_buffer_free (int *) ;
 int * ldns_buffer_new (int ) ;
 scalar_t__ ldns_pkt2buffer_wire (int *,int const*) ;
 scalar_t__ ldns_pkt_tsig (int const*) ;
 int * ldns_rr_rdf (scalar_t__,int) ;
 int ldns_send_buffer (int **,int *,int *,int *) ;

ldns_status
ldns_send(ldns_pkt **result_packet, ldns_resolver *r, const ldns_pkt *query_pkt)
{
 ldns_buffer *qb;
 ldns_status result;
 ldns_rdf *tsig_mac = ((void*)0);

 qb = ldns_buffer_new(LDNS_MIN_BUFLEN);

 if (query_pkt && ldns_pkt_tsig(query_pkt)) {
  tsig_mac = ldns_rr_rdf(ldns_pkt_tsig(query_pkt), 3);
 }

 if (!query_pkt ||
     ldns_pkt2buffer_wire(qb, query_pkt) != LDNS_STATUS_OK) {
  result = LDNS_STATUS_ERR;
 } else {
         result = ldns_send_buffer(result_packet, r, qb, tsig_mac);
 }

 ldns_buffer_free(qb);

 return result;
}
