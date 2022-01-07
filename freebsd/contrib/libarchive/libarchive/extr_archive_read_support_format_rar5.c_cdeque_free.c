
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdeque {int beg_pos; int end_pos; scalar_t__ cap_mask; int * arr; } ;


 int free (int *) ;

__attribute__((used)) static void cdeque_free(struct cdeque* d) {
 if(!d)
  return;

 if(!d->arr)
  return;

 free(d->arr);

 d->arr = ((void*)0);
 d->beg_pos = -1;
 d->end_pos = -1;
 d->cap_mask = 0;
}
