
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 char* itoa64 ;

void
b64_from_24bit(uint8_t B2, uint8_t B1, uint8_t B0, int n, char **cp)
{
 uint32_t w;
 int i;

 w = (B2 << 16) | (B1 << 8) | B0;
 for (i = 0; i < n; i++) {
  **cp = itoa64[w&0x3f];
  (*cp)++;
  w >>= 6;
 }
}
