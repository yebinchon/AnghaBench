
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lruhash_entry {struct lruhash_entry* lru_next; struct lruhash_entry* lru_prev; } ;
struct lruhash {struct lruhash_entry* lru_end; struct lruhash_entry* lru_start; } ;


 int log_assert (int) ;
 int lru_remove (struct lruhash*,struct lruhash_entry*) ;

void
lru_demote(struct lruhash* table, struct lruhash_entry* entry)
{
 log_assert(table && entry);
 if (entry == table->lru_end)
  return;

 lru_remove(table, entry);

 entry->lru_next = ((void*)0);
 entry->lru_prev = table->lru_end;

 if (table->lru_end == ((void*)0))
 {
  table->lru_start = entry;
 }
 else
 {
  table->lru_end->lru_next = entry;
 }
 table->lru_end = entry;
}
