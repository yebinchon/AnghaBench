
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct links_entry {size_t hash; scalar_t__ links; struct links_entry* next; TYPE_1__* previous; struct archive_entry* canonical; struct archive_entry* entry; } ;
struct archive_entry_linkresolver {int number_buckets; struct links_entry* spare; int number_entries; struct links_entry** buckets; } ;
struct archive_entry {int dummy; } ;
typedef int int64_t ;
typedef int dev_t ;
struct TYPE_2__ {struct links_entry* next; } ;


 int archive_entry_dev (struct archive_entry*) ;
 int archive_entry_free (struct archive_entry*) ;
 int archive_entry_ino64 (struct archive_entry*) ;
 int free (struct links_entry*) ;

__attribute__((used)) static struct links_entry *
find_entry(struct archive_entry_linkresolver *res,
    struct archive_entry *entry)
{
 struct links_entry *le;
 size_t hash, bucket;
 dev_t dev;
 int64_t ino;


 if (res->spare != ((void*)0)) {
  archive_entry_free(res->spare->canonical);
  archive_entry_free(res->spare->entry);
  free(res->spare);
  res->spare = ((void*)0);
 }

 dev = archive_entry_dev(entry);
 ino = archive_entry_ino64(entry);
 hash = (size_t)(dev ^ ino);


 bucket = hash & (res->number_buckets - 1);
 for (le = res->buckets[bucket]; le != ((void*)0); le = le->next) {
  if (le->hash == hash
      && dev == archive_entry_dev(le->canonical)
      && ino == archive_entry_ino64(le->canonical)) {






   --le->links;
   if (le->links > 0)
    return (le);

   if (le->previous != ((void*)0))
    le->previous->next = le->next;
   if (le->next != ((void*)0))
    le->next->previous = le->previous;
   if (res->buckets[bucket] == le)
    res->buckets[bucket] = le->next;
   res->number_entries--;

   res->spare = le;
   return (le);
  }
 }
 return (((void*)0));
}
