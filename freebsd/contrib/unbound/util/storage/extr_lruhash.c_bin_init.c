
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lruhash_bin {int lock; } ;


 int lock_protect (int *,struct lruhash_bin*,int) ;
 int lock_quick_init (int *) ;

void
bin_init(struct lruhash_bin* array, size_t size)
{
 size_t i;



 for(i=0; i<size; i++) {
  lock_quick_init(&array[i].lock);
  lock_protect(&array[i].lock, &array[i],
   sizeof(struct lruhash_bin));
 }
}
