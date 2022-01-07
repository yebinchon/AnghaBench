
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ TYPE_0 ;
 int* end_ptr ;
 int* fptr ;
 int good_rand (int) ;
 scalar_t__ rand_type ;
 int* rptr ;
 int* state ;

long
random(void)
{
 uint32_t i;
 uint32_t *f, *r;

 if (rand_type == TYPE_0) {
  i = state[0];
  state[0] = i = good_rand(i);
 } else {



  f = fptr; r = rptr;
  *f += *r;
  i = *f >> 1;
  if (++f >= end_ptr) {
   f = state;
   ++r;
  }
  else if (++r >= end_ptr) {
   r = state;
  }

  fptr = f; rptr = r;
 }
 return ((long)i);
}
