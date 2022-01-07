
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct links_entry {scalar_t__ dev; scalar_t__ ino; scalar_t__ links; struct links_entry* name; struct links_entry* previous; struct links_entry* next; } ;
struct cpio {struct links_entry* links_head; } ;
struct archive_read {int archive; } ;
struct archive_entry {int dummy; } ;
typedef scalar_t__ int64_t ;
typedef scalar_t__ dev_t ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ENOMEM ;
 int archive_entry_copy_hardlink (struct archive_entry*,struct links_entry*) ;
 scalar_t__ archive_entry_dev (struct archive_entry*) ;
 scalar_t__ archive_entry_ino64 (struct archive_entry*) ;
 int archive_entry_nlink (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_set_error (int *,int ,char*) ;
 int free (struct links_entry*) ;
 scalar_t__ malloc (int) ;
 struct links_entry* strdup (int ) ;

__attribute__((used)) static int
record_hardlink(struct archive_read *a,
    struct cpio *cpio, struct archive_entry *entry)
{
 struct links_entry *le;
 dev_t dev;
 int64_t ino;

 if (archive_entry_nlink(entry) <= 1)
  return (ARCHIVE_OK);

 dev = archive_entry_dev(entry);
 ino = archive_entry_ino64(entry);





 for (le = cpio->links_head; le; le = le->next) {
  if (le->dev == dev && le->ino == ino) {
   archive_entry_copy_hardlink(entry, le->name);

   if (--le->links <= 0) {
    if (le->previous != ((void*)0))
     le->previous->next = le->next;
    if (le->next != ((void*)0))
     le->next->previous = le->previous;
    if (cpio->links_head == le)
     cpio->links_head = le->next;
    free(le->name);
    free(le);
   }

   return (ARCHIVE_OK);
  }
 }

 le = (struct links_entry *)malloc(sizeof(struct links_entry));
 if (le == ((void*)0)) {
  archive_set_error(&a->archive,
      ENOMEM, "Out of memory adding file to list");
  return (ARCHIVE_FATAL);
 }
 if (cpio->links_head != ((void*)0))
  cpio->links_head->previous = le;
 le->next = cpio->links_head;
 le->previous = ((void*)0);
 cpio->links_head = le;
 le->dev = dev;
 le->ino = ino;
 le->links = archive_entry_nlink(entry) - 1;
 le->name = strdup(archive_entry_pathname(entry));
 if (le->name == ((void*)0)) {
  archive_set_error(&a->archive,
      ENOMEM, "Out of memory adding file to list");
  return (ARCHIVE_FATAL);
 }

 return (ARCHIVE_OK);
}
