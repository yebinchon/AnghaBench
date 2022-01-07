
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_randstate {int dummy; } ;


 int ub_random_max (struct ub_randstate*,int) ;

int
iter_ns_probability(struct ub_randstate* rnd, int n, int m)
{
 int sel;
 if(n == m)
  return 1;


 sel = ub_random_max(rnd, m);
 return (sel < n);
}
