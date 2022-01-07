
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ldns_status ;
typedef int ldns_resolver ;
typedef int ldns_pkt ;


 scalar_t__ LDNS_STATUS_OK ;
 scalar_t__ ldns_pkt_edns_udp_size (int *) ;
 int ldns_pkt_free (int *) ;
 int ldns_pkt_set_edns_udp_size (int *,int) ;
 scalar_t__ ldns_pkt_tc (int *) ;
 size_t* ldns_resolver_backup_rtt (int *) ;
 scalar_t__ ldns_resolver_fallback (int *) ;
 int ldns_resolver_restore_rtt (int *,size_t*) ;
 int ldns_resolver_set_usevc (int *,int) ;
 int ldns_resolver_usevc (int *) ;
 scalar_t__ ldns_send (int **,int *,int *) ;

ldns_status
ldns_resolver_send_pkt(ldns_pkt **answer, ldns_resolver *r,
       ldns_pkt *query_pkt)
{
 ldns_pkt *answer_pkt = ((void*)0);
 ldns_status stat = LDNS_STATUS_OK;
 size_t *rtt;

 stat = ldns_send(&answer_pkt, (ldns_resolver *)r, query_pkt);
 if (stat != LDNS_STATUS_OK) {
  if(answer_pkt) {
   ldns_pkt_free(answer_pkt);
   answer_pkt = ((void*)0);
  }
 } else {


  if (!ldns_resolver_usevc(r) && ldns_resolver_fallback(r)) {
   if (ldns_pkt_tc(answer_pkt)) {

    if (ldns_pkt_edns_udp_size(query_pkt) == 0) {
     ldns_pkt_set_edns_udp_size(query_pkt
       , 4096);
     ldns_pkt_free(answer_pkt);
     answer_pkt = ((void*)0);
     rtt = ldns_resolver_backup_rtt(r);
     stat = ldns_send(&answer_pkt, r
       , query_pkt);
     ldns_resolver_restore_rtt(r, rtt);
    }

    if (stat != LDNS_STATUS_OK ||
        ldns_pkt_tc(answer_pkt)) {
     ldns_resolver_set_usevc(r, 1);
     ldns_pkt_free(answer_pkt);
     stat = ldns_send(&answer_pkt, r, query_pkt);
     ldns_resolver_set_usevc(r, 0);
    }
   }
  }
 }

 if (answer) {
  *answer = answer_pkt;
 }

 return stat;
}
