
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct links_entry {struct archive_entry* entry; int links; int canonical; } ;
struct archive_entry_linkresolver {int strategy; } ;
struct archive_entry {int dummy; } ;


 scalar_t__ AE_IFBLK ;
 scalar_t__ AE_IFCHR ;
 scalar_t__ AE_IFDIR ;




 int NEXT_ENTRY_DEFERRED ;
 int archive_entry_copy_hardlink (struct archive_entry*,int ) ;
 scalar_t__ archive_entry_filetype (struct archive_entry*) ;
 int archive_entry_nlink (struct archive_entry*) ;
 int archive_entry_pathname (int ) ;
 int archive_entry_unset_size (struct archive_entry*) ;
 struct links_entry* find_entry (struct archive_entry_linkresolver*,struct archive_entry*) ;
 struct links_entry* insert_entry (struct archive_entry_linkresolver*,struct archive_entry*) ;
 struct links_entry* next_entry (struct archive_entry_linkresolver*,int ) ;

void
archive_entry_linkify(struct archive_entry_linkresolver *res,
    struct archive_entry **e, struct archive_entry **f)
{
 struct links_entry *le;
 struct archive_entry *t;

 *f = ((void*)0);

 if (*e == ((void*)0)) {
  le = next_entry(res, NEXT_ENTRY_DEFERRED);
  if (le != ((void*)0)) {
   *e = le->entry;
   le->entry = ((void*)0);
  }
  return;
 }


 if (archive_entry_nlink(*e) == 1)
  return;

 if (archive_entry_filetype(*e) == AE_IFDIR
     || archive_entry_filetype(*e) == AE_IFBLK
     || archive_entry_filetype(*e) == AE_IFCHR)
  return;

 switch (res->strategy) {
 case 128:
  le = find_entry(res, *e);
  if (le != ((void*)0)) {
   archive_entry_unset_size(*e);
   archive_entry_copy_hardlink(*e,
       archive_entry_pathname(le->canonical));
  } else
   insert_entry(res, *e);
  return;
 case 131:
  le = find_entry(res, *e);
  if (le != ((void*)0)) {
   archive_entry_copy_hardlink(*e,
       archive_entry_pathname(le->canonical));
  } else
   insert_entry(res, *e);
  return;
 case 129:

  return;
 case 130:
  le = find_entry(res, *e);
  if (le != ((void*)0)) {




   t = *e;
   *e = le->entry;
   le->entry = t;

   archive_entry_unset_size(*e);
   archive_entry_copy_hardlink(*e,
       archive_entry_pathname(le->canonical));


   if (le->links == 0) {
    *f = le->entry;
    le->entry = ((void*)0);
   }
  } else {




   le = insert_entry(res, *e);
   if (le == ((void*)0))

    return;
   le->entry = *e;
   *e = ((void*)0);
  }
  return;
 default:
  break;
 }
 return;
}
