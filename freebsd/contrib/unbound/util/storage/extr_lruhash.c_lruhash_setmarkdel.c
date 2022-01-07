
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lruhash {int lock; int markdelfunc; } ;
typedef int lruhash_markdelfunc_type ;


 int lock_quick_lock (int *) ;
 int lock_quick_unlock (int *) ;

void
lruhash_setmarkdel(struct lruhash* table, lruhash_markdelfunc_type md)
{
 lock_quick_lock(&table->lock);
 table->markdelfunc = md;
 lock_quick_unlock(&table->lock);
}
