
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long uint64_t ;
typedef int uint32_t ;
struct TYPE_2__ {unsigned long long state; int inc; } ;


 TYPE_1__ rng ;

__attribute__((used)) static uint32_t
pcg32_random (void)
{
 uint64_t oldstate = rng.state;

 rng.state = oldstate * 6364136223846793005ULL + (rng.inc | 1);
 uint32_t xorshifted = ((oldstate >> 18u) ^ oldstate) >> 27u;
 uint32_t rot = oldstate >> 59u;
 return (xorshifted >> rot) | (xorshifted << ((-rot) & 31));
}
