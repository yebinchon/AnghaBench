
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct rr_parse {int size; } ;
typedef int ssize_t ;
struct TYPE_3__ {scalar_t__ _dname_count; int* _wireformat; } ;
typedef TYPE_1__ sldns_rr_descriptor ;
typedef int sldns_buffer ;




 size_t get_rdf_size (int) ;
 size_t pkt_dname_len (int *) ;
 int * sldns_buffer_current (int *) ;
 size_t sldns_buffer_position (int *) ;
 scalar_t__ sldns_buffer_read_u16 (int *) ;
 scalar_t__ sldns_buffer_remaining (int *) ;
 int sldns_buffer_skip (int *,int) ;
 TYPE_1__* sldns_rr_descript (scalar_t__) ;

__attribute__((used)) static int
calc_size(sldns_buffer* pkt, uint16_t type, struct rr_parse* rr)
{
 const sldns_rr_descriptor* desc;
 uint16_t pkt_len;
 rr->size = sizeof(uint16_t);
 sldns_buffer_skip(pkt, 4);
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
    if((len = pkt_dname_len(pkt)) == 0)
     return 0;
    if(sldns_buffer_position(pkt)-oldpos > pkt_len)
     return 0;
    pkt_len -= sldns_buffer_position(pkt)-oldpos;
    rr->size += len;
    count--;
    len = 0;
    break;
   case 128:
    if(pkt_len < 1) {

     return 0;
    }
    len = sldns_buffer_current(pkt)[0] + 1;
    break;
   default:
    len = get_rdf_size(desc->_wireformat[rdf]);
   }
   if(len) {
    if(pkt_len < len)
     return 0;
    pkt_len -= len;
    sldns_buffer_skip(pkt, (ssize_t)len);
    rr->size += len;
   }
   rdf++;
  }
 }

 rr->size += pkt_len;
 sldns_buffer_skip(pkt, (ssize_t)pkt_len);
 return 1;
}
