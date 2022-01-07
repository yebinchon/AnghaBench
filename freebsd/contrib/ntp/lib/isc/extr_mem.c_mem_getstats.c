
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t total; size_t inuse; size_t max_size; TYPE_1__* stats; } ;
typedef TYPE_2__ isc__mem_t ;
struct TYPE_4__ {int totalgets; int gets; } ;



__attribute__((used)) static inline void
mem_getstats(isc__mem_t *ctx, size_t size) {
 ctx->total += size;
 ctx->inuse += size;

 if (size > ctx->max_size) {
  ctx->stats[ctx->max_size].gets++;
  ctx->stats[ctx->max_size].totalgets++;
 } else {
  ctx->stats[size].gets++;
  ctx->stats[size].totalgets++;
 }
}
