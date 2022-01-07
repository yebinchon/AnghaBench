
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct links_entry {int entry; } ;
struct archive_entry_linkresolver {struct archive_entry_linkresolver* buckets; } ;


 int NEXT_ENTRY_ALL ;
 int archive_entry_free (int ) ;
 int free (struct archive_entry_linkresolver*) ;
 struct links_entry* next_entry (struct archive_entry_linkresolver*,int ) ;

void
archive_entry_linkresolver_free(struct archive_entry_linkresolver *res)
{
 struct links_entry *le;

 if (res == ((void*)0))
  return;

 while ((le = next_entry(res, NEXT_ENTRY_ALL)) != ((void*)0))
  archive_entry_free(le->entry);
 free(res->buckets);
 free(res);
}
