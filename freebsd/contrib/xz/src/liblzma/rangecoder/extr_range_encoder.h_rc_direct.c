
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int count; scalar_t__* symbols; } ;
typedef TYPE_1__ lzma_range_encoder ;


 scalar_t__ RC_DIRECT_0 ;

__attribute__((used)) static inline void
rc_direct(lzma_range_encoder *rc,
  uint32_t value, uint32_t bit_count)
{
 do {
  rc->symbols[rc->count++]
    = RC_DIRECT_0 + ((value >> --bit_count) & 1);
 } while (bit_count != 0);
}
