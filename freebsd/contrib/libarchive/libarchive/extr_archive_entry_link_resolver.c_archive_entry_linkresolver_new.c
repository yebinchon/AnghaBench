
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry_linkresolver {int number_buckets; int * buckets; } ;


 void* calloc (int,int) ;
 int free (struct archive_entry_linkresolver*) ;
 int links_cache_initial_size ;

struct archive_entry_linkresolver *
archive_entry_linkresolver_new(void)
{
 struct archive_entry_linkresolver *res;


 if (links_cache_initial_size == 0 ||
     (links_cache_initial_size & (links_cache_initial_size - 1)) != 0)
  return (((void*)0));

 res = calloc(1, sizeof(struct archive_entry_linkresolver));
 if (res == ((void*)0))
  return (((void*)0));
 res->number_buckets = links_cache_initial_size;
 res->buckets = calloc(res->number_buckets, sizeof(res->buckets[0]));
 if (res->buckets == ((void*)0)) {
  free(res);
  return (((void*)0));
 }
 return (res);
}
