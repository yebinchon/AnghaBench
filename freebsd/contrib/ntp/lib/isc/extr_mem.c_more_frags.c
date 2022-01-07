
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int isc_boolean_t ;
struct TYPE_9__ {size_t mem_target; TYPE_4__** freelists; TYPE_2__* stats; TYPE_1__* basic_blocks; } ;
typedef TYPE_3__ isc__mem_t ;
struct TYPE_10__ {struct TYPE_10__* next; } ;
typedef TYPE_4__ element ;
struct TYPE_8__ {scalar_t__ freefrags; int blocks; } ;
struct TYPE_7__ {struct TYPE_7__* next; } ;


 int ISC_FALSE ;
 int ISC_TRUE ;
 int more_basic_blocks (TYPE_3__*) ;
 size_t rmsize (size_t) ;

__attribute__((used)) static inline isc_boolean_t
more_frags(isc__mem_t *ctx, size_t new_size) {
 int i, frags;
 size_t total_size;
 void *new;
 unsigned char *curr, *next;





 if (ctx->basic_blocks == ((void*)0)) {
  if (!more_basic_blocks(ctx)) {







   return (ISC_FALSE);
  }
 }

 total_size = ctx->mem_target;
 new = ctx->basic_blocks;
 ctx->basic_blocks = ctx->basic_blocks->next;
 frags = total_size / new_size;
 ctx->stats[new_size].blocks++;
 ctx->stats[new_size].freefrags += frags;




 curr = new;
 next = curr + new_size;
 total_size -= new_size;
 for (i = 0; i < (frags - 1); i++) {
  ((element *)curr)->next = (element *)next;
  curr = next;
  next += new_size;
  total_size -= new_size;
 }



 total_size = rmsize(total_size);
 if (total_size > 0U) {
  ((element *)next)->next = ctx->freelists[total_size];
  ctx->freelists[total_size] = (element *)next;
  ctx->stats[total_size].freefrags++;
 }




 ((element *)curr)->next = ((void*)0);
 ctx->freelists[new_size] = new;

 return (ISC_TRUE);
}
