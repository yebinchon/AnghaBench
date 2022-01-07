
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int ARC4RANDOM_UINT32 ;


 unsigned int arc4random () ;

unsigned int
arc4random_uniform(unsigned int upper_bound)
{
 ARC4RANDOM_UINT32 r, min;

 if (upper_bound < 2)
  return 0;





 if (upper_bound > 0x80000000)
  min = 1 + ~upper_bound;
 else {

  min = ((0xffffffff - (upper_bound * 2)) + 1) % upper_bound;
 }
 for (;;) {
  r = arc4random();
  if (r >= min)
   break;
 }

 return r % upper_bound;
}
