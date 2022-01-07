
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



int
nsecbitmap_has_type_rdata(uint8_t* bitmap, size_t len, uint16_t type)
{


 uint8_t masks[8] = {0x80, 0x40, 0x20, 0x10, 0x08, 0x04, 0x02, 0x01};
 uint8_t type_window = type>>8;
 uint8_t type_low = type&0xff;
 uint8_t win, winlen;


 while(len > 0) {
  if(len < 3)
   return 0;
  win = *bitmap++;
  winlen = *bitmap++;
  len -= 2;
  if(len < winlen || winlen < 1 || winlen > 32)
   return 0;
  if(win == type_window) {


   size_t mybyte = type_low>>3;
   if(winlen <= mybyte)
    return 0;
   return (int)(bitmap[mybyte] & masks[type_low&0x7]);
  } else {

   bitmap += winlen;
   len -= winlen;
  }
 }

 return 0;
}
