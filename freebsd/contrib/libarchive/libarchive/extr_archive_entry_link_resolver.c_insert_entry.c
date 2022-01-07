
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct links_entry {size_t hash; scalar_t__ links; struct links_entry* previous; struct links_entry* next; int canonical; } ;
struct archive_entry_linkresolver {int number_entries; int number_buckets; struct links_entry** buckets; } ;
struct archive_entry {int dummy; } ;


 int archive_entry_clone (struct archive_entry*) ;
 int archive_entry_dev (struct archive_entry*) ;
 int archive_entry_ino64 (struct archive_entry*) ;
 scalar_t__ archive_entry_nlink (struct archive_entry*) ;
 struct links_entry* calloc (int,int) ;
 int grow_hash (struct archive_entry_linkresolver*) ;

__attribute__((used)) static struct links_entry *
insert_entry(struct archive_entry_linkresolver *res,
    struct archive_entry *entry)
{
 struct links_entry *le;
 size_t hash, bucket;


 le = calloc(1, sizeof(struct links_entry));
 if (le == ((void*)0))
  return (((void*)0));
 le->canonical = archive_entry_clone(entry);


 if (res->number_entries > res->number_buckets * 2)
  grow_hash(res);

 hash = (size_t)(archive_entry_dev(entry) ^ archive_entry_ino64(entry));
 bucket = hash & (res->number_buckets - 1);


 if (res->buckets[bucket] != ((void*)0))
  res->buckets[bucket]->previous = le;
 res->number_entries++;
 le->next = res->buckets[bucket];
 le->previous = ((void*)0);
 res->buckets[bucket] = le;
 le->hash = hash;
 le->links = archive_entry_nlink(entry) - 1;
 return (le);
}
