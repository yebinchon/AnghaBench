
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef unsigned int uint16_t ;


 scalar_t__ sldns_str_print (char**,size_t*,char*) ;
 scalar_t__ sldns_wire2str_type_print (char**,size_t*,unsigned int) ;

int sldns_wire2str_nsec_scan(uint8_t** d, size_t* dl, char** s, size_t* sl)
{
 uint8_t* p = *d;
 size_t pl = *dl;
 unsigned i, bit, window, block_len;
 uint16_t t;
 int w = 0;


 while(pl) {
  if(pl < 2) return -1;
  block_len = (unsigned)p[1];
  if(pl < 2+block_len) return -1;
  p += block_len+2;
  pl -= block_len+2;
 }


 p = *d;
 pl = *dl;
 while(pl) {
  if(pl < 2) return -1;
  window = (unsigned)p[0];
  block_len = (unsigned)p[1];
  if(pl < 2+block_len) return -1;
  p += 2;
  for(i=0; i<block_len; i++) {
   if(p[i] == 0) continue;

   t = ((window)<<8) | (i << 3);
   for(bit=0; bit<8; bit++) {
    if((p[i]&(0x80>>bit))) {
     if(w) w += sldns_str_print(s, sl, " ");
     w += sldns_wire2str_type_print(s, sl,
      t+bit);
    }
   }
  }
  p += block_len;
  pl -= block_len+2;
 }
 (*d) += *dl;
 (*dl) = 0;
 return w;
}
