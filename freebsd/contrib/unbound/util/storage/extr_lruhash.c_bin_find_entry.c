
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lruhash_entry {scalar_t__ hash; struct lruhash_entry* overflow_next; int key; } ;
struct lruhash_bin {struct lruhash_entry* overflow_list; } ;
struct lruhash {scalar_t__ (* compfunc ) (int ,void*) ;} ;
typedef scalar_t__ hashvalue_type ;


 scalar_t__ stub1 (int ,void*) ;

struct lruhash_entry*
bin_find_entry(struct lruhash* table,
 struct lruhash_bin* bin, hashvalue_type hash, void* key)
{
 struct lruhash_entry* p = bin->overflow_list;
 while(p) {
  if(p->hash == hash && table->compfunc(p->key, key) == 0)
   return p;
  p = p->overflow_next;
 }
 return ((void*)0);
}
