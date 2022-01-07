
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {struct ae_xattr* xattr_head; } ;
struct ae_xattr {struct ae_xattr* value; struct ae_xattr* name; struct ae_xattr* next; } ;


 int free (struct ae_xattr*) ;

void
archive_entry_xattr_clear(struct archive_entry *entry)
{
 struct ae_xattr *xp;

 while (entry->xattr_head != ((void*)0)) {
  xp = entry->xattr_head->next;
  free(entry->xattr_head->name);
  free(entry->xattr_head->value);
  free(entry->xattr_head);
  entry->xattr_head = xp;
 }

 entry->xattr_head = ((void*)0);
}
