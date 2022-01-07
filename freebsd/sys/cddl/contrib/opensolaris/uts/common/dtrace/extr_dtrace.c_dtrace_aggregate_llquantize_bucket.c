
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int int64_t ;


 int ASSERT (int) ;

__attribute__((used)) static int
dtrace_aggregate_llquantize_bucket(uint16_t factor, uint16_t low,
    uint16_t high, uint16_t nsteps, int64_t value)
{
 int64_t this = 1, last, next;
 int base = 1, order;

 ASSERT(factor <= nsteps);
 ASSERT(nsteps % factor == 0);

 for (order = 0; order < low; order++)
  this *= factor;





 if (value < (last = this))
  return (0);

 for (this *= factor; order <= high; order++) {
  int nbuckets = this > nsteps ? nsteps : this;

  if ((next = this * factor) < this) {







   value = this - 1;
  }

  if (value < this) {






   return (base + (value - last) / (this / nbuckets));
  }

  base += nbuckets - (nbuckets / factor);
  last = this;
  this = next;
 }





 return (base);
}
