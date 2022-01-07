
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdeque {int cap_mask; int * arr; } ;


 int CDE_ALLOC ;
 int CDE_OK ;
 int CDE_PARAM ;
 int cdeque_clear (struct cdeque*) ;
 int * malloc (int) ;

__attribute__((used)) static int cdeque_init(struct cdeque* d, int max_capacity_power_of_2) {
 if(d == ((void*)0) || max_capacity_power_of_2 == 0)
  return CDE_PARAM;

 d->cap_mask = max_capacity_power_of_2 - 1;
 d->arr = ((void*)0);

 if((max_capacity_power_of_2 & d->cap_mask) > 0)
  return CDE_PARAM;

 cdeque_clear(d);
 d->arr = malloc(sizeof(void*) * max_capacity_power_of_2);

 return d->arr ? CDE_OK : CDE_ALLOC;
}
