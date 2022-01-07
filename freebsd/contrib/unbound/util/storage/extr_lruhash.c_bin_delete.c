
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lruhash_entry {int key; void* data; struct lruhash_entry* overflow_next; } ;
struct lruhash_bin {struct lruhash_entry* overflow_list; int lock; } ;
struct lruhash {int cb_arg; int (* deldatafunc ) (void*,int ) ;int (* delkeyfunc ) (int ,int ) ;} ;


 int lock_quick_destroy (int *) ;
 int stub1 (int ,int ) ;
 int stub2 (void*,int ) ;

void
bin_delete(struct lruhash* table, struct lruhash_bin* bin)
{
 struct lruhash_entry* p, *np;
 void *d;
 if(!bin)
  return;
 lock_quick_destroy(&bin->lock);
 p = bin->overflow_list;
 bin->overflow_list = ((void*)0);
 while(p) {
  np = p->overflow_next;
  d = p->data;
  (*table->delkeyfunc)(p->key, table->cb_arg);
  (*table->deldatafunc)(d, table->cb_arg);
  p = np;
 }
}
