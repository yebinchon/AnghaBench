
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ohash_info {int data; int alloc; int free; int (* calloc ) (unsigned long,int,int ) ;int key_offset; } ;
struct TYPE_2__ {int data; int (* calloc ) (unsigned long,int,int ) ;int alloc; int free; int key_offset; } ;
struct ohash {unsigned long size; scalar_t__ deleted; scalar_t__ total; TYPE_1__ info; int t; } ;
struct _ohash_record {int dummy; } ;


 unsigned long MINSIZE ;
 int STAT_HASH_CREATION ;
 unsigned long STAT_HASH_SIZE ;
 int stub1 (unsigned long,int,int ) ;

void
ohash_init(struct ohash *h, unsigned int size, struct ohash_info *info)
{
 h->size = 1UL << size;
 if (h->size < MINSIZE)
  h->size = MINSIZE;





 h->info.key_offset = info->key_offset;
 h->info.calloc = info->calloc;
 h->info.free = info->free;
 h->info.alloc = info->alloc;
 h->info.data = info->data;
 h->t = (h->info.calloc)(h->size, sizeof(struct _ohash_record),
      h->info.data);
 h->total = h->deleted = 0;
}
