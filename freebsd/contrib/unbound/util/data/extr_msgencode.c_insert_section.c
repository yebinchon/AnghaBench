
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int time_t ;
struct reply_info {int * rrsets; } ;
struct regional {int dummy; } ;
struct compress_tree_node {int dummy; } ;
typedef int sldns_pkt_section ;
typedef int sldns_buffer ;


 int LDNS_RR_TYPE_ANY ;
 int LDNS_SECTION_ADDITIONAL ;
 int LDNS_SECTION_ANSWER ;
 int RETVAL_OK ;
 int packed_rrset_encode (int ,int *,int *,int ,struct regional*,int,int,struct compress_tree_node**,int ,int ,int,size_t) ;
 size_t sldns_buffer_position (int *) ;
 int sldns_buffer_set_position (int *,size_t) ;

__attribute__((used)) static int
insert_section(struct reply_info* rep, size_t num_rrsets, uint16_t* num_rrs,
 sldns_buffer* pkt, size_t rrsets_before, time_t timenow,
 struct regional* region, struct compress_tree_node** tree,
 sldns_pkt_section s, uint16_t qtype, int dnssec, size_t rr_offset)
{
 int r;
 size_t i, setstart;





 if(s != LDNS_SECTION_ADDITIONAL) {
  if(s == LDNS_SECTION_ANSWER && qtype == LDNS_RR_TYPE_ANY)
   dnssec = 1;
    for(i=0; i<num_rrsets; i++) {
   setstart = sldns_buffer_position(pkt);
   if((r=packed_rrset_encode(rep->rrsets[rrsets_before+i],
    pkt, num_rrs, timenow, region, 1, 1, tree,
    s, qtype, dnssec, rr_offset))
    != RETVAL_OK) {


    sldns_buffer_set_position(pkt, setstart);
    return r;
   }
  }
 } else {
    for(i=0; i<num_rrsets; i++) {
   setstart = sldns_buffer_position(pkt);
   if((r=packed_rrset_encode(rep->rrsets[rrsets_before+i],
    pkt, num_rrs, timenow, region, 1, 0, tree,
    s, qtype, dnssec, rr_offset))
    != RETVAL_OK) {
    sldns_buffer_set_position(pkt, setstart);
    return r;
   }
  }
  if(dnssec)
      for(i=0; i<num_rrsets; i++) {
   setstart = sldns_buffer_position(pkt);
   if((r=packed_rrset_encode(rep->rrsets[rrsets_before+i],
    pkt, num_rrs, timenow, region, 0, 1, tree,
    s, qtype, dnssec, rr_offset))
    != RETVAL_OK) {
    sldns_buffer_set_position(pkt, setstart);
    return r;
   }
    }
 }
 return RETVAL_OK;
}
