
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void dba_array ;
typedef enum form { ____Placeholder_form } form ;


 int DBA_GROW ;
 int DBA_STR ;
 int DBP_MAX ;
 int dba_array_add (void*,void*) ;
 void* dba_array_new (int,int) ;
 void* mandoc_strdup (char const*) ;
 void* prepend (char const*,int) ;

struct dba_array *
dba_page_new(struct dba_array *pages, const char *arch,
    const char *desc, const char *file, enum form form)
{
 struct dba_array *page, *entry;

 page = dba_array_new(DBP_MAX, 0);
 entry = dba_array_new(1, DBA_STR | DBA_GROW);
 dba_array_add(page, entry);
 entry = dba_array_new(1, DBA_STR | DBA_GROW);
 dba_array_add(page, entry);
 if (arch != ((void*)0) && *arch != '\0') {
  entry = dba_array_new(1, DBA_STR | DBA_GROW);
  dba_array_add(entry, (void *)arch);
 } else
  entry = ((void*)0);
 dba_array_add(page, entry);
 dba_array_add(page, mandoc_strdup(desc));
 entry = dba_array_new(1, DBA_STR | DBA_GROW);
 dba_array_add(entry, prepend(file, form));
 dba_array_add(page, entry);
 dba_array_add(pages, page);
 return page;
}
