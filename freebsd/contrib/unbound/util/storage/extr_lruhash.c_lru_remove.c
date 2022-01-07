
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lruhash_entry {TYPE_2__* lru_prev; TYPE_1__* lru_next; } ;
struct lruhash {TYPE_2__* lru_end; TYPE_1__* lru_start; } ;
struct TYPE_4__ {TYPE_1__* lru_next; } ;
struct TYPE_3__ {TYPE_2__* lru_prev; } ;



void
lru_remove(struct lruhash* table, struct lruhash_entry* entry)
{
 if(entry->lru_prev)
  entry->lru_prev->lru_next = entry->lru_next;
 else table->lru_start = entry->lru_next;
 if(entry->lru_next)
  entry->lru_next->lru_prev = entry->lru_prev;
 else table->lru_end = entry->lru_prev;
}
