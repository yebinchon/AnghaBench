
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lruhash_bin {int dummy; } ;
struct lruhash {size_t size; int size_mask; size_t space_max; struct lruhash* array; int lock; scalar_t__ space_used; scalar_t__ num; int * lru_end; int * lru_start; void* cb_arg; int deldatafunc; int delkeyfunc; int compfunc; int sizefunc; } ;
typedef int lruhash_sizefunc_type ;
typedef int lruhash_delkeyfunc_type ;
typedef int lruhash_deldatafunc_type ;
typedef int lruhash_compfunc_type ;


 int bin_init (struct lruhash*,int) ;
 struct lruhash* calloc (int,int) ;
 int free (struct lruhash*) ;
 int lock_protect (int *,struct lruhash*,int) ;
 int lock_quick_destroy (int *) ;
 int lock_quick_init (int *) ;

struct lruhash*
lruhash_create(size_t start_size, size_t maxmem,
 lruhash_sizefunc_type sizefunc, lruhash_compfunc_type compfunc,
 lruhash_delkeyfunc_type delkeyfunc,
 lruhash_deldatafunc_type deldatafunc, void* arg)
{
 struct lruhash* table = (struct lruhash*)calloc(1,
  sizeof(struct lruhash));
 if(!table)
  return ((void*)0);
 lock_quick_init(&table->lock);
 table->sizefunc = sizefunc;
 table->compfunc = compfunc;
 table->delkeyfunc = delkeyfunc;
 table->deldatafunc = deldatafunc;
 table->cb_arg = arg;
 table->size = start_size;
 table->size_mask = (int)(start_size-1);
 table->lru_start = ((void*)0);
 table->lru_end = ((void*)0);
 table->num = 0;
 table->space_used = 0;
 table->space_max = maxmem;
 table->array = calloc(table->size, sizeof(struct lruhash_bin));
 if(!table->array) {
  lock_quick_destroy(&table->lock);
  free(table);
  return ((void*)0);
 }
 bin_init(table->array, table->size);
 lock_protect(&table->lock, table, sizeof(*table));
 lock_protect(&table->lock, table->array,
  table->size*sizeof(struct lruhash_bin));
 return table;
}
