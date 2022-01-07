
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct rrset_parse {int type; } ;
struct rr_parse {int * ttl_data; } ;
typedef int sldns_buffer ;
 size_t pkt_dname_len (int *) ;
 int * sldns_buffer_begin (int *) ;
 size_t sldns_buffer_position (int *) ;
 int sldns_buffer_set_position (int *,size_t) ;
 size_t sldns_read_uint16 (int *) ;

__attribute__((used)) static int
get_additional_name(struct rrset_parse* rrset, struct rr_parse* rr,
 uint8_t** nm, size_t* nmlen, sldns_buffer* pkt)
{
 size_t offset = 0;
 size_t len, oldpos;
 switch(rrset->type) {
  case 134:
  case 133:
  case 132:
  case 129:
   offset = 0;
   break;
  case 131:
  case 135:
   offset = 2;
   break;
  case 128:
   offset = 6;
   break;
  case 130:

   return 0;
  default:
   return 0;
 }
 len = sldns_read_uint16(rr->ttl_data+sizeof(uint32_t));
 if(len < offset+1)
  return 0;
 *nm = rr->ttl_data+sizeof(uint32_t)+sizeof(uint16_t)+offset;
 oldpos = sldns_buffer_position(pkt);
 sldns_buffer_set_position(pkt, (size_t)(*nm - sldns_buffer_begin(pkt)));
 *nmlen = pkt_dname_len(pkt);
 sldns_buffer_set_position(pkt, oldpos);
 if(*nmlen == 0)
  return 0;
 return 1;
}
