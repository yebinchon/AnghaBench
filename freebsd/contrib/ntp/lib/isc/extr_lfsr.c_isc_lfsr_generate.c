
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned int count; int arg; int (* reseed ) (TYPE_1__*,int ) ;} ;
typedef TYPE_1__ isc_lfsr_t ;


 int REQUIRE (int) ;
 int VALID_LFSR (TYPE_1__*) ;
 unsigned char lfsr_generate (TYPE_1__*) ;
 int stub1 (TYPE_1__*,int ) ;

void
isc_lfsr_generate(isc_lfsr_t *lfsr, void *data, unsigned int count)
{
 unsigned char *p;
 unsigned int bit;
 unsigned int byte;

 REQUIRE(VALID_LFSR(lfsr));
 REQUIRE(data != ((void*)0));
 REQUIRE(count > 0);

 p = data;
 byte = count;

 while (byte--) {
  *p = 0;
  for (bit = 0; bit < 7; bit++) {
   *p |= lfsr_generate(lfsr);
   *p <<= 1;
  }
  *p |= lfsr_generate(lfsr);
  p++;
 }

 if (lfsr->count != 0 && lfsr->reseed != ((void*)0)) {
  if (lfsr->count <= count * 8)
   lfsr->reseed(lfsr, lfsr->arg);
  else
   lfsr->count -= (count * 8);
 }
}
