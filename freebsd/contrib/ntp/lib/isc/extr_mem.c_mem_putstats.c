
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t inuse; size_t max_size; TYPE_1__* stats; } ;
typedef TYPE_2__ isc__mem_t ;
struct TYPE_4__ {unsigned int gets; } ;


 int INSIST (int) ;
 int UNUSED (void*) ;

__attribute__((used)) static inline void
mem_putstats(isc__mem_t *ctx, void *ptr, size_t size) {
 UNUSED(ptr);

 INSIST(ctx->inuse >= size);
 ctx->inuse -= size;

 if (size > ctx->max_size) {
  INSIST(ctx->stats[ctx->max_size].gets > 0U);
  ctx->stats[ctx->max_size].gets--;
 } else {
  INSIST(ctx->stats[size].gets > 0U);
  ctx->stats[size].gets--;
 }
}
