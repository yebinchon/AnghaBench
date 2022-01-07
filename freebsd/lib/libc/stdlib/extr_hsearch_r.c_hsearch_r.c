
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct hsearch_data {struct __hsearch* __hsearch; } ;
struct __hsearch {size_t index_mask; int entries_used; int offset_basis; TYPE_1__* entries; } ;
struct TYPE_7__ {int * key; } ;
typedef TYPE_1__ ENTRY ;
typedef scalar_t__ ACTION ;


 int ESRCH ;
 scalar_t__ FIND ;
 TYPE_1__* calloc (size_t,int) ;
 int errno ;
 int free (TYPE_1__*) ;
 size_t hsearch_hash (int ,int *) ;
 TYPE_1__* hsearch_lookup_free (struct __hsearch*,size_t) ;
 scalar_t__ strcmp (int *,int *) ;

int
hsearch_r(ENTRY item, ACTION action, ENTRY **retval, struct hsearch_data *htab)
{
 struct __hsearch *hsearch;
 ENTRY *entry, *old_entries, *new_entries;
 size_t hash, index, i, old_hash, old_count, new_count;

 hsearch = htab->__hsearch;
 hash = hsearch_hash(hsearch->offset_basis, item.key);





 for (index = hash, i = 0;; index += ++i) {
  entry = &hsearch->entries[index & hsearch->index_mask];
  if (entry->key == ((void*)0))
   break;
  if (strcmp(entry->key, item.key) == 0) {
   *retval = entry;
   return (1);
  }
 }


 if (action == FIND) {
  errno = ESRCH;
  return (0);
 }

 if (hsearch->entries_used * 2 >= hsearch->index_mask) {

  old_count = hsearch->index_mask + 1;
  old_entries = hsearch->entries;







  new_count = (hsearch->index_mask + 1) * 2;
  new_entries = calloc(new_count, sizeof(ENTRY));
  if (new_entries == ((void*)0))
   return (0);
  hsearch->entries = new_entries;
  hsearch->index_mask = new_count - 1;


  for (i = 0; i < old_count; ++i) {
   entry = &old_entries[i];
   if (entry->key != ((void*)0)) {
    old_hash = hsearch_hash(hsearch->offset_basis,
        entry->key);
    *hsearch_lookup_free(hsearch, old_hash) =
        *entry;
   }
  }


  free(old_entries);





  hsearch = htab->__hsearch;
  entry = hsearch_lookup_free(hsearch, hash);
 }


 *entry = item;
 ++hsearch->entries_used;
 *retval = entry;
 return (1);
}
