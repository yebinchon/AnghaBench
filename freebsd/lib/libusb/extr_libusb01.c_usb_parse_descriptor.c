
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;



int
usb_parse_descriptor(uint8_t *source, char *description, void *dest)
{
 uint8_t *sp = source;
 uint8_t *dp = dest;
 uint16_t w;
 uint32_t d;
 char *cp;

 for (cp = description; *cp; cp++) {
  switch (*cp) {
  case 'b':
   *dp++ = *sp++;
   break;



  case 'w':
   w = (sp[1] << 8) | sp[0];
   sp += 2;

   dp += ((dp - (uint8_t *)0) & 1);
   *((uint16_t *)dp) = w;
   dp += 2;
   break;



  case 'd':
   d = (sp[3] << 24) | (sp[2] << 16) |
       (sp[1] << 8) | sp[0];
   sp += 4;

   dp += ((dp - (uint8_t *)0) & 1);

   dp += ((dp - (uint8_t *)0) & 2);
   *((uint32_t *)dp) = d;
   dp += 4;
   break;
  }
 }
 return (sp - source);
}
