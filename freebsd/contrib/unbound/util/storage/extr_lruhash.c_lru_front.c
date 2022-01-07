
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lruhash_entry {struct lruhash_entry* lru_prev; struct lruhash_entry* lru_next; } ;
struct lruhash {struct lruhash_entry* lru_start; struct lruhash_entry* lru_end; } ;



void
lru_front(struct lruhash* table, struct lruhash_entry* entry)
{
 entry->lru_prev = ((void*)0);
 entry->lru_next = table->lru_start;
 if(!table->lru_start)
  table->lru_end = entry;
 else table->lru_start->lru_prev = entry;
 table->lru_start = entry;
}
