
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ldns_rr_type ;
typedef int ldns_rr_list ;
typedef int ldns_rdf ;
typedef scalar_t__ ldns_pkt_type ;
typedef int ldns_pkt ;


 scalar_t__ LDNS_PACKET_ANSWER ;
 scalar_t__ LDNS_PACKET_NODATA ;
 scalar_t__ LDNS_PACKET_NXDOMAIN ;
 scalar_t__ LDNS_PACKET_UNKNOWN ;
 scalar_t__ LDNS_RR_TYPE_RRSIG ;
 int LDNS_SECTION_ANSWER ;
 int LDNS_SECTION_AUTHORITY ;
 scalar_t__ ldns_pkt_reply_type (int *) ;
 int * ldns_pkt_rr_list_by_name_and_type (int *,int *,scalar_t__,int ) ;
 int * ldns_pkt_rr_list_by_type (int *,scalar_t__,int ) ;
 scalar_t__ ldns_rdf2rr_type (int ) ;
 int ldns_rr_clone (int ) ;
 int ldns_rr_list_deep_free (int *) ;
 int * ldns_rr_list_new () ;
 int ldns_rr_list_push_rr (int *,int ) ;
 int ldns_rr_list_rr (int *,size_t) ;
 size_t ldns_rr_list_rr_count (int *) ;
 int ldns_rr_rrsig_typecovered (int ) ;

ldns_pkt_type
get_dnssec_rr(ldns_pkt *p, ldns_rdf *name, ldns_rr_type t,
 ldns_rr_list **rrlist, ldns_rr_list **sig)
{
 ldns_pkt_type pt = LDNS_PACKET_UNKNOWN;
 ldns_rr_list *sigs = ((void*)0);
 size_t i;

 if (!p) {
  if (rrlist) {
   *rrlist = ((void*)0);
  }
  return LDNS_PACKET_UNKNOWN;
 }

 pt = ldns_pkt_reply_type(p);
 if (name) {
  if (rrlist) {
   *rrlist = ldns_pkt_rr_list_by_name_and_type(p, name, t,
     LDNS_SECTION_ANSWER);
   if (!*rrlist) {
    *rrlist = ldns_pkt_rr_list_by_name_and_type(
      p, name, t,
      LDNS_SECTION_AUTHORITY);
   }
  }
  if (sig) {
   sigs = ldns_pkt_rr_list_by_name_and_type(p, name,
     LDNS_RR_TYPE_RRSIG,
     LDNS_SECTION_ANSWER);
   if (!sigs) {
    sigs = ldns_pkt_rr_list_by_name_and_type(
      p, name, LDNS_RR_TYPE_RRSIG,
      LDNS_SECTION_AUTHORITY);
   }
  }
 } else {

  if (rrlist) {
   *rrlist = ldns_pkt_rr_list_by_type(
     p, t, LDNS_SECTION_AUTHORITY);
  }
  if (sig) {
   sigs = ldns_pkt_rr_list_by_type(p,
     LDNS_RR_TYPE_RRSIG,
     LDNS_SECTION_AUTHORITY);
  }
 }
 if (sig) {
  *sig = ldns_rr_list_new();
  for (i = 0; i < ldns_rr_list_rr_count(sigs); i++) {

   if (t == ldns_rdf2rr_type(ldns_rr_rrsig_typecovered(
      ldns_rr_list_rr(sigs, i)))) {

    ldns_rr_list_push_rr(*sig,
      ldns_rr_clone(
       ldns_rr_list_rr(
        sigs, i)));
   }
  }
 }
 ldns_rr_list_deep_free(sigs);

 if (pt == LDNS_PACKET_NXDOMAIN || pt == LDNS_PACKET_NODATA) {
  return pt;
 } else {
  return LDNS_PACKET_ANSWER;
 }
}
