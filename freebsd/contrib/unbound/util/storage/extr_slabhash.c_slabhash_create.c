
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct slabhash {size_t size; int mask; struct lruhash** array; scalar_t__ shift; } ;
struct lruhash {int dummy; } ;
typedef int lruhash_sizefunc_type ;
typedef int lruhash_delkeyfunc_type ;
typedef int lruhash_deldatafunc_type ;
typedef int lruhash_compfunc_type ;


 scalar_t__ calloc (int,int) ;
 int free (struct slabhash*) ;
 int log_assert (int) ;
 struct lruhash* lruhash_create (size_t,size_t,int ,int ,int ,int ,void*) ;
 int slabhash_delete (struct slabhash*) ;

struct slabhash* slabhash_create(size_t numtables, size_t start_size,
 size_t maxmem, lruhash_sizefunc_type sizefunc,
 lruhash_compfunc_type compfunc, lruhash_delkeyfunc_type delkeyfunc,
 lruhash_deldatafunc_type deldatafunc, void* arg)
{
 size_t i;
 struct slabhash* sl = (struct slabhash*)calloc(1,
  sizeof(struct slabhash));
 if(!sl) return ((void*)0);
 sl->size = numtables;
 log_assert(sl->size > 0);
 sl->array = (struct lruhash**)calloc(sl->size, sizeof(struct lruhash*));
 if(!sl->array) {
  free(sl);
  return ((void*)0);
 }
 sl->mask = (uint32_t)(sl->size - 1);
 if(sl->mask == 0) {
  sl->shift = 0;
 } else {
  log_assert( (sl->size & sl->mask) == 0
                                 );
  sl->shift = 0;
  while(!(sl->mask & 0x80000000)) {
   sl->mask <<= 1;
   sl->shift ++;
  }
 }
 for(i=0; i<sl->size; i++) {
  sl->array[i] = lruhash_create(start_size, maxmem / sl->size,
   sizefunc, compfunc, delkeyfunc, deldatafunc, arg);
  if(!sl->array[i]) {
   slabhash_delete(sl);
   return ((void*)0);
  }
 }
 return sl;
}
