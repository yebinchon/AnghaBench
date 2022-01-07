
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t max_size; size_t total; size_t inuse; TYPE_1__* stats; TYPE_3__** freelists; int arg; int (* memfree ) (int ,void*) ;} ;
typedef TYPE_2__ isc__mem_t ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef TYPE_3__ element ;
struct TYPE_5__ {unsigned int gets; int freefrags; } ;


 int INSIST (int) ;
 int check_overrun (void*,size_t,size_t) ;
 int memset (void*,int,size_t) ;
 size_t quantize (size_t) ;
 int stub1 (int ,void*) ;

__attribute__((used)) static inline void
mem_putunlocked(isc__mem_t *ctx, void *mem, size_t size) {
 size_t new_size = quantize(size);

 if (size == ctx->max_size || new_size >= ctx->max_size) {






  (ctx->memfree)(ctx->arg, mem);
  INSIST(ctx->stats[ctx->max_size].gets != 0U);
  ctx->stats[ctx->max_size].gets--;
  INSIST(size <= ctx->total);
  ctx->inuse -= size;
  ctx->total -= size;
  return;
 }
 ((element *)mem)->next = ctx->freelists[new_size];
 ctx->freelists[new_size] = (element *)mem;







 INSIST(ctx->stats[size].gets != 0U);
 ctx->stats[size].gets--;
 ctx->stats[new_size].freefrags++;
 ctx->inuse -= new_size;
}
