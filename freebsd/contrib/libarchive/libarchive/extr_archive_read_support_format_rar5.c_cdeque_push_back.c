
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdeque {int size; int cap_mask; size_t* arr; size_t end_pos; } ;


 int CDE_OK ;
 int CDE_OUT_OF_BOUNDS ;
 int CDE_PARAM ;

__attribute__((used)) static int cdeque_push_back(struct cdeque* d, void* item) {
 if(d == ((void*)0))
  return CDE_PARAM;

 if(d->size == d->cap_mask + 1)
  return CDE_OUT_OF_BOUNDS;

 d->arr[d->end_pos] = (size_t) item;
 d->end_pos = (d->end_pos + 1) & d->cap_mask;
 d->size++;

 return CDE_OK;
}
