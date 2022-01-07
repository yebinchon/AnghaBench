
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint16_t ;
typedef int time_t ;
struct reply_info {unsigned int flags; scalar_t__ authoritative; } ;
struct regional {int dummy; } ;
struct query_info {scalar_t__ local_alias; } ;
struct edns_data {int dummy; } ;
typedef int sldns_buffer ;


 unsigned int BIT_AA ;
 unsigned int BIT_AD ;
 unsigned int BIT_CD ;
 unsigned int BIT_QR ;
 unsigned int BIT_RD ;
 scalar_t__ FLAGS_GET_RCODE (unsigned int) ;
 unsigned int LDNS_HEADER_SIZE ;
 scalar_t__ LDNS_RCODE_NOERROR ;
 scalar_t__ LDNS_RCODE_NXDOMAIN ;
 int attach_edns_record (int *,struct edns_data*) ;
 unsigned int calc_edns_field_size (struct edns_data*) ;
 int log_assert (unsigned int) ;
 int log_err (char*) ;
 int reply_info_encode (struct query_info*,struct reply_info*,unsigned int,unsigned int,int *,int ,struct regional*,unsigned int,int) ;
 scalar_t__ sldns_buffer_capacity (int *) ;
 scalar_t__ sldns_buffer_limit (int *) ;

int
reply_info_answer_encode(struct query_info* qinf, struct reply_info* rep,
 uint16_t id, uint16_t qflags, sldns_buffer* pkt, time_t timenow,
 int cached, struct regional* region, uint16_t udpsize,
 struct edns_data* edns, int dnssec, int secure)
{
 uint16_t flags;
 unsigned int attach_edns = 0;

 if(!cached || rep->authoritative) {

  flags = rep->flags | (qflags & (BIT_RD|BIT_CD));
 } else {

  flags = (rep->flags & ~BIT_AA) | (qflags & (BIT_RD|BIT_CD));
 }
 if(secure && (dnssec || (qflags&BIT_AD)))
  flags |= BIT_AD;



 if(qinf->local_alias &&
  (FLAGS_GET_RCODE(rep->flags) == LDNS_RCODE_NOERROR ||
  FLAGS_GET_RCODE(rep->flags) == LDNS_RCODE_NXDOMAIN)) {
  flags |= BIT_AA;
  flags &= ~BIT_AD;
 }
 log_assert(flags & BIT_QR);
 if(udpsize < LDNS_HEADER_SIZE)
  return 0;
 if(sldns_buffer_capacity(pkt) < udpsize)
  udpsize = sldns_buffer_capacity(pkt);
 if(udpsize < LDNS_HEADER_SIZE + calc_edns_field_size(edns)) {

  attach_edns = 0;
 } else {

  attach_edns = (unsigned int)calc_edns_field_size(edns);
  udpsize -= attach_edns;
 }

 if(!reply_info_encode(qinf, rep, id, flags, pkt, timenow, region,
  udpsize, dnssec)) {
  log_err("reply encode: out of memory");
  return 0;
 }
 if(attach_edns && sldns_buffer_capacity(pkt) >=
  sldns_buffer_limit(pkt)+attach_edns)
  attach_edns_record(pkt, edns);
 return 1;
}
