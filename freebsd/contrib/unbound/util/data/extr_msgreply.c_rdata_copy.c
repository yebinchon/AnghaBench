
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int time_t ;
struct rr_parse {scalar_t__* ttl_data; scalar_t__ size; scalar_t__ outside_packet; } ;
struct packed_rrset_data {int ttl; } ;
typedef int ssize_t ;
struct TYPE_3__ {scalar_t__ _dname_count; int* _wireformat; } ;
typedef TYPE_1__ sldns_rr_descriptor ;
typedef scalar_t__ sldns_pkt_section ;
typedef int sldns_buffer ;




 scalar_t__ LDNS_RR_TYPE_SOA ;
 scalar_t__ LDNS_SECTION_AUTHORITY ;
 int MAX_NEG_TTL ;
 int MAX_TTL ;
 int MIN_TTL ;
 int dname_pkt_copy (int *,int *,scalar_t__*) ;
 size_t get_rdf_size (int) ;
 scalar_t__ htons (scalar_t__) ;
 int log_assert (int) ;
 int memmove (int *,scalar_t__*,scalar_t__) ;
 int pkt_dname_len (int *) ;
 scalar_t__* sldns_buffer_begin (int *) ;
 scalar_t__* sldns_buffer_current (int *) ;
 size_t sldns_buffer_position (int *) ;
 scalar_t__ sldns_buffer_read_u16 (int *) ;
 scalar_t__ sldns_buffer_remaining (int *) ;
 int sldns_buffer_set_position (int *,size_t) ;
 int sldns_buffer_skip (int *,int ) ;
 int sldns_read_uint32 (scalar_t__*) ;
 TYPE_1__* sldns_rr_descript (scalar_t__) ;
 int soa_find_minttl (struct rr_parse*) ;

__attribute__((used)) static int
rdata_copy(sldns_buffer* pkt, struct packed_rrset_data* data, uint8_t* to,
 struct rr_parse* rr, time_t* rr_ttl, uint16_t type,
 sldns_pkt_section section)
{
 uint16_t pkt_len;
 const sldns_rr_descriptor* desc;

 *rr_ttl = sldns_read_uint32(rr->ttl_data);

 if(*rr_ttl & 0x80000000U)
  *rr_ttl = 0;
 if(type == LDNS_RR_TYPE_SOA && section == LDNS_SECTION_AUTHORITY) {


  if(*rr_ttl > soa_find_minttl(rr))
   *rr_ttl = soa_find_minttl(rr);
  if(*rr_ttl > MAX_NEG_TTL)
   *rr_ttl = MAX_NEG_TTL;
 }
 if(*rr_ttl < MIN_TTL)
  *rr_ttl = MIN_TTL;
 if(*rr_ttl > MAX_TTL)
  *rr_ttl = MAX_TTL;
 if(*rr_ttl < data->ttl)
  data->ttl = *rr_ttl;

 if(rr->outside_packet) {

  memmove(to, rr->ttl_data+sizeof(uint32_t), rr->size);
  return 1;
 }

 sldns_buffer_set_position(pkt, (size_t)
  (rr->ttl_data - sldns_buffer_begin(pkt) + sizeof(uint32_t)));


 pkt_len = htons(rr->size - 2);
 memmove(to, &pkt_len, sizeof(uint16_t));
 to += 2;

 pkt_len = sldns_buffer_read_u16(pkt);
 if(sldns_buffer_remaining(pkt) < pkt_len)
  return 0;
 desc = sldns_rr_descript(type);
 if(pkt_len > 0 && desc && desc->_dname_count > 0) {
  int count = (int)desc->_dname_count;
  int rdf = 0;
  size_t len;
  size_t oldpos;

  while(pkt_len > 0 && count) {
   switch(desc->_wireformat[rdf]) {
   case 129:
    oldpos = sldns_buffer_position(pkt);
    dname_pkt_copy(pkt, to,
     sldns_buffer_current(pkt));
    to += pkt_dname_len(pkt);
    pkt_len -= sldns_buffer_position(pkt)-oldpos;
    count--;
    len = 0;
    break;
   case 128:
    len = sldns_buffer_current(pkt)[0] + 1;
    break;
   default:
    len = get_rdf_size(desc->_wireformat[rdf]);
    break;
   }
   if(len) {
    memmove(to, sldns_buffer_current(pkt), len);
    to += len;
    sldns_buffer_skip(pkt, (ssize_t)len);
    log_assert(len <= pkt_len);
    pkt_len -= len;
   }
   rdf++;
  }
 }

 if(pkt_len > 0)
  memmove(to, sldns_buffer_current(pkt), pkt_len);

 return 1;
}
