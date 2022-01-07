
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int sldns_buffer ;


 size_t sldns_buffer_remaining (int *) ;
 int sldns_buffer_write (int *,scalar_t__*,scalar_t__) ;
 int sldns_buffer_write_u8 (int *,scalar_t__) ;

int
dname_buffer_write(sldns_buffer* pkt, uint8_t* dname)
{
 uint8_t lablen;

 if(sldns_buffer_remaining(pkt) < 1)
  return 0;
 lablen = *dname++;
 sldns_buffer_write_u8(pkt, lablen);
 while(lablen) {
  if(sldns_buffer_remaining(pkt) < (size_t)lablen+1)
   return 0;
  sldns_buffer_write(pkt, dname, lablen);
  dname += lablen;
  lablen = *dname++;
  sldns_buffer_write_u8(pkt, lablen);
 }
 return 1;
}
