
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdeque {scalar_t__ size; } ;


 int CDE_OK ;
 int CDE_OUT_OF_BOUNDS ;
 int CDE_PARAM ;
 int cdeque_pop_front_fast (struct cdeque*,void**) ;

__attribute__((used)) static int cdeque_pop_front(struct cdeque* d, void** value) {
 if(!d || !value)
  return CDE_PARAM;

 if(d->size == 0)
  return CDE_OUT_OF_BOUNDS;

 cdeque_pop_front_fast(d, value);
 return CDE_OK;
}
