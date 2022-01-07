
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int isc_uint32_t ;
struct TYPE_4__ {int state; int bits; int tap; int arg; int (* reseed ) (TYPE_1__*,int ) ;} ;
typedef TYPE_1__ isc_lfsr_t ;


 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static inline isc_uint32_t
lfsr_generate(isc_lfsr_t *lfsr)
{
 if (lfsr->state == 0) {
  if (lfsr->reseed != ((void*)0))
   lfsr->reseed(lfsr, lfsr->arg);
  if (lfsr->state == 0)
   lfsr->state = 0xffffffffU >> (32 - lfsr->bits);
 }

 if (lfsr->state & 0x01) {
  lfsr->state = (lfsr->state >> 1) ^ lfsr->tap;
  return (1);
 } else {
  lfsr->state >>= 1;
  return (0);
 }
}
