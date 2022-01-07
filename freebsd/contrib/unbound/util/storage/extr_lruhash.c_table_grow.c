
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lruhash_bin {int lock; } ;
struct lruhash {int size_mask; int size; struct lruhash_bin* array; int lock; } ;


 int bin_init (struct lruhash_bin*,int) ;
 int bin_split (struct lruhash*,struct lruhash_bin*,int) ;
 struct lruhash_bin* calloc (int,int) ;
 int free (struct lruhash_bin*) ;
 int lock_protect (int *,struct lruhash_bin*,int) ;
 int lock_quick_destroy (int *) ;
 int lock_unprotect (int *,struct lruhash_bin*) ;
 int log_err (char*) ;

void
table_grow(struct lruhash* table)
{
 struct lruhash_bin* newa;
 int newmask;
 size_t i;
 if(table->size_mask == (int)(((size_t)-1)>>1)) {
  log_err("hash array malloc: size_t too small");
  return;
 }

 newa = calloc(table->size*2, sizeof(struct lruhash_bin));
 if(!newa) {
  log_err("hash grow: malloc failed");

  return;
 }
 bin_init(newa, table->size*2);
 newmask = (table->size_mask << 1) | 1;
 bin_split(table, newa, newmask);

 lock_unprotect(&table->lock, table->array);
 for(i=0; i<table->size; i++) {
  lock_quick_destroy(&table->array[i].lock);
 }
 free(table->array);

 table->size *= 2;
 table->size_mask = newmask;
 table->array = newa;
 lock_protect(&table->lock, table->array,
  table->size*sizeof(struct lruhash_bin));
 return;
}
