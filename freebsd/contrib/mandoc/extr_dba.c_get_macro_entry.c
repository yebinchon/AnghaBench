
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ohash {int dummy; } ;
struct macro_entry {int pages; int value; } ;
typedef int int32_t ;


 int DBA_GROW ;
 int dba_array_new (int ,int ) ;
 struct macro_entry* mandoc_malloc (int) ;
 int memcpy (int *,char const*,size_t) ;
 struct macro_entry* ohash_find (struct ohash*,unsigned int) ;
 int ohash_insert (struct ohash*,unsigned int,struct macro_entry*) ;
 unsigned int ohash_qlookup (struct ohash*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static struct macro_entry *
get_macro_entry(struct ohash *macro, const char *value, int32_t np)
{
 struct macro_entry *entry;
 size_t len;
 unsigned int slot;

 slot = ohash_qlookup(macro, value);
 if ((entry = ohash_find(macro, slot)) == ((void*)0)) {
  len = strlen(value) + 1;
  entry = mandoc_malloc(sizeof(*entry) + len);
  memcpy(&entry->value, value, len);
  entry->pages = dba_array_new(np, DBA_GROW);
  ohash_insert(macro, slot, entry);
 }
 return entry;
}
