
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int isc_boolean_t ;
struct TYPE_4__ {int mem_target; unsigned int quota; size_t total; size_t basic_table_count; size_t basic_table_size; unsigned char** (* memalloc ) (int ,unsigned int) ;unsigned char** basic_table; unsigned char* lowest; unsigned char* highest; void* basic_blocks; int memalloc_failures; int arg; int (* memfree ) (int ,unsigned char**) ;} ;
typedef TYPE_1__ isc__mem_t ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_2__ element ;


 int INSIST (int) ;
 int ISC_FALSE ;
 int ISC_TRUE ;
 int NUM_BASIC_BLOCKS ;
 unsigned int TABLE_INCREMENT ;
 int memcpy (unsigned char**,unsigned char**,int) ;
 unsigned char** stub1 (int ,unsigned int) ;
 int stub2 (int ,unsigned char**) ;
 unsigned char** stub3 (int ,int) ;

__attribute__((used)) static inline isc_boolean_t
more_basic_blocks(isc__mem_t *ctx) {
 void *new;
 unsigned char *curr, *next;
 unsigned char *first, *last;
 unsigned char **table;
 unsigned int table_size;
 size_t increment;
 int i;






 increment = NUM_BASIC_BLOCKS * ctx->mem_target;
 if (ctx->quota != 0U && ctx->total + increment > ctx->quota)
  return (ISC_FALSE);

 INSIST(ctx->basic_table_count <= ctx->basic_table_size);
 if (ctx->basic_table_count == ctx->basic_table_size) {
  table_size = ctx->basic_table_size + TABLE_INCREMENT;
  table = (ctx->memalloc)(ctx->arg,
     table_size * sizeof(unsigned char *));
  if (table == ((void*)0)) {
   ctx->memalloc_failures++;
   return (ISC_FALSE);
  }
  if (ctx->basic_table_size != 0) {
   memcpy(table, ctx->basic_table,
          ctx->basic_table_size *
          sizeof(unsigned char *));
   (ctx->memfree)(ctx->arg, ctx->basic_table);
  }
  ctx->basic_table = table;
  ctx->basic_table_size = table_size;
 }

 new = (ctx->memalloc)(ctx->arg, NUM_BASIC_BLOCKS * ctx->mem_target);
 if (new == ((void*)0)) {
  ctx->memalloc_failures++;
  return (ISC_FALSE);
 }
 ctx->total += increment;
 ctx->basic_table[ctx->basic_table_count] = new;
 ctx->basic_table_count++;

 curr = new;
 next = curr + ctx->mem_target;
 for (i = 0; i < (NUM_BASIC_BLOCKS - 1); i++) {
  ((element *)curr)->next = (element *)next;
  curr = next;
  next += ctx->mem_target;
 }




 ((element *)curr)->next = ((void*)0);
 first = new;
 last = first + NUM_BASIC_BLOCKS * ctx->mem_target - 1;
 if (first < ctx->lowest || ctx->lowest == ((void*)0))
  ctx->lowest = first;
 if (last > ctx->highest)
  ctx->highest = last;
 ctx->basic_blocks = new;

 return (ISC_TRUE);
}
