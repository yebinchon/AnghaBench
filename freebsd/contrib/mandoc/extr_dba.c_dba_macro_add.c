
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_entry {int pages; } ;
struct dba_array {int dummy; } ;
typedef int int32_t ;


 int dba_array_add (int ,struct dba_array*) ;
 int dba_array_get (struct dba_array*,int ) ;
 struct macro_entry* get_macro_entry (int ,char const*,int) ;

void
dba_macro_add(struct dba_array *macros, int32_t im, const char *value,
    struct dba_array *page)
{
 struct macro_entry *entry;

 if (*value == '\0')
  return;
 entry = get_macro_entry(dba_array_get(macros, im), value, 1);
 dba_array_add(entry->pages, page);
}
