
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abs (int) ;
 int assert (int) ;
 int mask (int) ;
 int random () ;
 long double remainderl (long double,long double) ;
 long double remquol (long double,long double,int*) ;
 int signbit (long double) ;

__attribute__((used)) static void
testl(long double x, long double y, long double expected_rem, int expected_quo)
{
 int q;
 long double rem;

 q = random();
 rem = remainderl(x, y);
 assert(rem == expected_rem);
 assert(!signbit(rem) == !signbit(expected_rem));
 rem = remquol(x, y, &q);
 assert(rem == expected_rem);
 assert(!signbit(rem) == !signbit(expected_rem));
 assert((q ^ expected_quo) >= 0);
 assert((q & 0x7) == (expected_quo & 0x7));
 if (q != 0) {
  assert((q > 0) ^ !(expected_quo > 0));
  q = abs(q);
  assert(q == (abs(expected_quo) & mask(q)));
 }
}
