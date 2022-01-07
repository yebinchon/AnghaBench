
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr_list ;
typedef int ldns_pkt_type ;
typedef int ldns_pkt ;


 int LDNS_PACKET_ANSWER ;
 int LDNS_PACKET_NODATA ;
 int LDNS_PACKET_NXDOMAIN ;
 int LDNS_PACKET_REFERRAL ;
 int LDNS_PACKET_UNKNOWN ;
 scalar_t__ LDNS_RCODE_NXDOMAIN ;
 int LDNS_RR_TYPE_NS ;
 int LDNS_RR_TYPE_SOA ;
 int LDNS_SECTION_AUTHORITY ;
 scalar_t__ ldns_pkt_ancount (int const*) ;
 scalar_t__ ldns_pkt_arcount (int const*) ;
 scalar_t__ ldns_pkt_get_rcode (int const*) ;
 int ldns_pkt_nscount (int const*) ;
 int * ldns_pkt_rr_list_by_type (int const*,int ,int ) ;
 int ldns_rr_list_deep_free (int *) ;

ldns_pkt_type
ldns_pkt_reply_type(const ldns_pkt *p)
{
 ldns_rr_list *tmp;

 if (!p) {
  return LDNS_PACKET_UNKNOWN;
 }

 if (ldns_pkt_get_rcode(p) == LDNS_RCODE_NXDOMAIN) {
  return LDNS_PACKET_NXDOMAIN;
 }

 if (ldns_pkt_ancount(p) == 0 && ldns_pkt_arcount(p) == 0
   && ldns_pkt_nscount(p) == 1) {


  tmp = ldns_pkt_rr_list_by_type(p, LDNS_RR_TYPE_SOA,
     LDNS_SECTION_AUTHORITY);
  if (tmp) {
   ldns_rr_list_deep_free(tmp);
   return LDNS_PACKET_NODATA;
  } else {

  }
 }

 if (ldns_pkt_ancount(p) == 0 && ldns_pkt_nscount(p) > 0) {
  tmp = ldns_pkt_rr_list_by_type(p, LDNS_RR_TYPE_NS,
                                 LDNS_SECTION_AUTHORITY);
  if (tmp) {

   ldns_rr_list_deep_free(tmp);
   return LDNS_PACKET_REFERRAL;
  } else {

  }
  ldns_rr_list_deep_free(tmp);
 }




 return LDNS_PACKET_ANSWER;
}
