
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct links_entry {struct links_entry* next; TYPE_1__* previous; int * entry; int * canonical; } ;
struct archive_entry_linkresolver {size_t number_buckets; struct links_entry* spare; int number_entries; struct links_entry** buckets; } ;
struct TYPE_2__ {struct links_entry* next; } ;


 int NEXT_ENTRY_DEFERRED ;
 int NEXT_ENTRY_PARTIAL ;
 int archive_entry_free (int *) ;
 int free (struct links_entry*) ;

__attribute__((used)) static struct links_entry *
next_entry(struct archive_entry_linkresolver *res, int mode)
{
 struct links_entry *le;
 size_t bucket;


 if (res->spare != ((void*)0)) {
  archive_entry_free(res->spare->canonical);
  archive_entry_free(res->spare->entry);
  free(res->spare);
  res->spare = ((void*)0);
 }


 for (bucket = 0; bucket < res->number_buckets; bucket++) {
  for (le = res->buckets[bucket]; le != ((void*)0); le = le->next) {
   if (le->entry != ((void*)0) &&
       (mode & NEXT_ENTRY_DEFERRED) == 0)
    continue;
   if (le->entry == ((void*)0) &&
       (mode & NEXT_ENTRY_PARTIAL) == 0)
    continue;

   if (le->next != ((void*)0))
    le->next->previous = le->previous;
   if (le->previous != ((void*)0))
    le->previous->next = le->next;
   else
    res->buckets[bucket] = le->next;
   res->number_entries--;

   res->spare = le;
   return (le);
  }
 }
 return (((void*)0));
}
