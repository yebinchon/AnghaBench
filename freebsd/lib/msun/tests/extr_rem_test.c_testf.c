
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abs (int) ;
 int assert (int) ;
 int mask (int) ;
 int random () ;
 float remainderf (float,float) ;
 float remquof (float,float,int*) ;
 int signbit (float) ;

__attribute__((used)) static void
testf(float x, float y, float expected_rem, int expected_quo)
{
 int q;
 float rem;

 q = random();
 rem = remainderf(x, y);
 assert(rem == expected_rem);
 assert(!signbit(rem) == !signbit(expected_rem));
 rem = remquof(x, y, &q);
 assert(rem == expected_rem);
 assert(!signbit(rem) == !signbit(expected_rem));
 assert((q ^ expected_quo) >= 0);
 assert((q & 0x7) == (expected_quo & 0x7));
 if (q != 0) {
  assert((q > 0) ^ !(expected_quo > 0));
  q = abs(q);
  assert((q & mask(q)) == (abs(expected_quo) & mask(q)));
 }
}
