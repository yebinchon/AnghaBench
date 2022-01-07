
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_entry {int pages; } ;
struct dba {int pages; int macros; } ;
typedef int int32_t ;


 int be32toh (int const) ;
 int dba_array_add (int ,int ) ;
 int dba_array_get (int ,int) ;
 struct macro_entry* get_macro_entry (int ,char const*,int) ;

void
dba_macro_new(struct dba *dba, int32_t im, const char *value,
    const int32_t *pp)
{
 struct macro_entry *entry;
 const int32_t *ip;
 int32_t np;

 np = 0;
 for (ip = pp; *ip; ip++)
  np++;

 entry = get_macro_entry(dba_array_get(dba->macros, im), value, np);
 for (ip = pp; *ip; ip++)
  dba_array_add(entry->pages, dba_array_get(dba->pages,
      be32toh(*ip) / 5 / sizeof(*ip) - 1));
}
