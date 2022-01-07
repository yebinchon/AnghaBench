
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int NSHUFF ;
 scalar_t__ TYPE_0 ;
 int * fptr ;
 int good_rand (int ) ;
 int rand_deg ;
 size_t rand_sep ;
 scalar_t__ rand_type ;
 int random () ;
 int * rptr ;
 int * state ;

void
srandom(unsigned int x)
{
 int i, lim;

 state[0] = (uint32_t)x;
 if (rand_type == TYPE_0)
  lim = NSHUFF;
 else {
  for (i = 1; i < rand_deg; i++)
   state[i] = good_rand(state[i - 1]);
  fptr = &state[rand_sep];
  rptr = &state[0];
  lim = 10 * rand_deg;
 }
 for (i = 0; i < lim; i++)
  (void)random();
}
