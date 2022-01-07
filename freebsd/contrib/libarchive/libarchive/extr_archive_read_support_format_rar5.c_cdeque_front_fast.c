
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdeque {size_t beg_pos; scalar_t__* arr; } ;



__attribute__((used)) static void cdeque_front_fast(struct cdeque* d, void** value) {
 *value = (void*) d->arr[d->beg_pos];
}
