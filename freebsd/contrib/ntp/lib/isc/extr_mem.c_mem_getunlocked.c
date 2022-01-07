
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {size_t max_size; unsigned int quota; size_t total; size_t inuse; TYPE_2__* stats; TYPE_1__** freelists; int memalloc_failures; int arg; void* (* memalloc ) (int ,size_t) ;} ;
typedef TYPE_3__ isc__mem_t ;
struct TYPE_7__ {int freefrags; int totalgets; int gets; } ;
struct TYPE_6__ {struct TYPE_6__* next; } ;


 int memset (void*,int,size_t) ;
 int more_frags (TYPE_3__*,size_t) ;
 size_t quantize (size_t) ;
 void* stub1 (int ,size_t) ;

__attribute__((used)) static inline void *
mem_getunlocked(isc__mem_t *ctx, size_t size) {
 size_t new_size = quantize(size);
 void *ret;

 if (size >= ctx->max_size || new_size >= ctx->max_size) {



  if (ctx->quota != 0U && ctx->total + size > ctx->quota) {
   ret = ((void*)0);
   goto done;
  }
  ret = (ctx->memalloc)(ctx->arg, size);
  if (ret == ((void*)0)) {
   ctx->memalloc_failures++;
   goto done;
  }
  ctx->total += size;
  ctx->inuse += size;
  ctx->stats[ctx->max_size].gets++;
  ctx->stats[ctx->max_size].totalgets++;





  new_size = size;
  goto done;
 }






 if (ctx->freelists[new_size] == ((void*)0) && !more_frags(ctx, new_size))
  return (((void*)0));




 ret = ctx->freelists[new_size];
 ctx->freelists[new_size] = ctx->freelists[new_size]->next;







 ctx->stats[size].gets++;
 ctx->stats[size].totalgets++;
 ctx->stats[new_size].freefrags--;
 ctx->inuse += new_size;

 done:






 return (ret);
}
