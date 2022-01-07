
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int ssize_t ;
typedef int sldns_buffer ;


 scalar_t__ LABEL_IS_PTR (int) ;
 size_t LDNS_MAX_DOMAINLEN ;
 int MAX_COMPRESS_PTRS ;
 scalar_t__ PTR_OFFSET (int,int) ;
 scalar_t__ sldns_buffer_limit (int *) ;
 size_t sldns_buffer_position (int *) ;
 int sldns_buffer_read_u8 (int *) ;
 int sldns_buffer_remaining (int *) ;
 int sldns_buffer_set_position (int *,size_t) ;
 int sldns_buffer_skip (int *,int ) ;

size_t
pkt_dname_len(sldns_buffer* pkt)
{
 size_t len = 0;
 int ptrcount = 0;
 uint8_t labellen;
 size_t endpos = 0;



 while(1) {

  if(sldns_buffer_remaining(pkt) < 1)
   return 0;
  labellen = sldns_buffer_read_u8(pkt);
  if(LABEL_IS_PTR(labellen)) {

   uint16_t ptr;
   if(sldns_buffer_remaining(pkt) < 1)
    return 0;
   ptr = PTR_OFFSET(labellen, sldns_buffer_read_u8(pkt));
   if(ptrcount++ > MAX_COMPRESS_PTRS)
    return 0;
   if(sldns_buffer_limit(pkt) <= ptr)
    return 0;
   if(!endpos)
    endpos = sldns_buffer_position(pkt);
   sldns_buffer_set_position(pkt, ptr);
  } else {

   if(labellen > 0x3f)
    return 0;
   len += 1 + labellen;
   if(len > LDNS_MAX_DOMAINLEN)
    return 0;
   if(labellen == 0) {

    break;
   }
   if(sldns_buffer_remaining(pkt) < labellen)
    return 0;
   sldns_buffer_skip(pkt, (ssize_t)labellen);
  }
 }
 if(endpos)
  sldns_buffer_set_position(pkt, endpos);

 return len;
}
