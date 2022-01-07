
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef void* uint32_t ;
struct TYPE_3__ {int* t; } ;
typedef TYPE_1__ blake2s_state ;



__attribute__((used)) static inline int blake2s_increment_counter( blake2s_state *S, const uint32_t inc )
{
  uint64_t t = ( ( uint64_t )S->t[1] << 32 ) | S->t[0];
  t += inc;
  S->t[0] = ( uint32_t )( t >> 0 );
  S->t[1] = ( uint32_t )( t >> 32 );
  return 0;
}
