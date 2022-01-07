
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct links_entry {size_t hash; struct links_entry* previous; struct links_entry* next; } ;
struct archive_entry_linkresolver {int number_buckets; struct links_entry** buckets; } ;


 struct links_entry** calloc (size_t,int) ;
 int free (struct links_entry**) ;

__attribute__((used)) static void
grow_hash(struct archive_entry_linkresolver *res)
{
 struct links_entry *le, **new_buckets;
 size_t new_size;
 size_t i, bucket;


 new_size = res->number_buckets * 2;
 if (new_size < res->number_buckets)
  return;
 new_buckets = calloc(new_size, sizeof(struct links_entry *));

 if (new_buckets == ((void*)0))
  return;

 for (i = 0; i < res->number_buckets; i++) {
  while (res->buckets[i] != ((void*)0)) {

   le = res->buckets[i];
   res->buckets[i] = le->next;


   bucket = le->hash & (new_size - 1);

   if (new_buckets[bucket] != ((void*)0))
    new_buckets[bucket]->previous = le;
   le->next = new_buckets[bucket];
   le->previous = ((void*)0);
   new_buckets[bucket] = le;
  }
 }
 free(res->buckets);
 res->buckets = new_buckets;
 res->number_buckets = new_size;
}
