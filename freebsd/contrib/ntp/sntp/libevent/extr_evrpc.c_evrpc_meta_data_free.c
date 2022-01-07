
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_meta_list {int dummy; } ;
struct evrpc_meta {struct evrpc_meta* data; struct evrpc_meta* key; } ;


 int EVUTIL_ASSERT (int ) ;
 struct evrpc_meta* TAILQ_FIRST (struct evrpc_meta_list*) ;
 int TAILQ_REMOVE (struct evrpc_meta_list*,struct evrpc_meta*,int ) ;
 int mm_free (struct evrpc_meta*) ;
 int next ;

__attribute__((used)) static void
evrpc_meta_data_free(struct evrpc_meta_list *meta_data)
{
 struct evrpc_meta *entry;
 EVUTIL_ASSERT(meta_data != ((void*)0));

 while ((entry = TAILQ_FIRST(meta_data)) != ((void*)0)) {
  TAILQ_REMOVE(meta_data, entry, next);
  mm_free(entry->key);
  mm_free(entry->data);
  mm_free(entry);
 }
}
