
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lruhash_entry {int key; int lock; void* data; struct lruhash_entry* overflow_next; } ;
struct lruhash_bin {int lock; struct lruhash_entry* overflow_list; } ;
struct lruhash {int cb_arg; int (* deldatafunc ) (void*,int ) ;int (* delkeyfunc ) (int ,int ) ;int (* markdelfunc ) (int ) ;} ;


 int lock_quick_lock (int *) ;
 int lock_quick_unlock (int *) ;
 int lock_rw_unlock (int *) ;
 int lock_rw_wrlock (int *) ;
 int stub1 (int ) ;
 int stub2 (int ,int ) ;
 int stub3 (void*,int ) ;

__attribute__((used)) static void
bin_clear(struct lruhash* table, struct lruhash_bin* bin)
{
 struct lruhash_entry* p, *np;
 void *d;
 lock_quick_lock(&bin->lock);
 p = bin->overflow_list;
 while(p) {
  lock_rw_wrlock(&p->lock);
  np = p->overflow_next;
  d = p->data;
  if(table->markdelfunc)
   (*table->markdelfunc)(p->key);
  lock_rw_unlock(&p->lock);
  (*table->delkeyfunc)(p->key, table->cb_arg);
  (*table->deldatafunc)(d, table->cb_arg);
  p = np;
 }
 bin->overflow_list = ((void*)0);
 lock_quick_unlock(&bin->lock);
}
