
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct links_entry {unsigned int links; struct archive_entry* canonical; } ;
struct archive_entry_linkresolver {TYPE_1__* spare; } ;
struct archive_entry {int dummy; } ;
struct TYPE_2__ {int entry; int canonical; } ;


 int NEXT_ENTRY_PARTIAL ;
 int archive_entry_free (int ) ;
 int free (TYPE_1__*) ;
 struct links_entry* next_entry (struct archive_entry_linkresolver*,int ) ;

struct archive_entry *
archive_entry_partial_links(struct archive_entry_linkresolver *res,
    unsigned int *links)
{
 struct archive_entry *e;
 struct links_entry *le;


 if (res->spare != ((void*)0)) {
  archive_entry_free(res->spare->canonical);
  archive_entry_free(res->spare->entry);
  free(res->spare);
  res->spare = ((void*)0);
 }

 le = next_entry(res, NEXT_ENTRY_PARTIAL);
 if (le != ((void*)0)) {
  e = le->canonical;
  if (links != ((void*)0))
   *links = le->links;
  le->canonical = ((void*)0);
 } else {
  e = ((void*)0);
  if (links != ((void*)0))
   *links = 0;
 }
 return (e);
}
