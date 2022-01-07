
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lruhash_entry {int dummy; } ;
struct lruhash {struct lruhash_entry* lru_start; } ;


 int log_assert (int) ;
 int lru_front (struct lruhash*,struct lruhash_entry*) ;
 int lru_remove (struct lruhash*,struct lruhash_entry*) ;

void
lru_touch(struct lruhash* table, struct lruhash_entry* entry)
{
 log_assert(table && entry);
 if(entry == table->lru_start)
  return;

 lru_remove(table, entry);

 lru_front(table, entry);
}
