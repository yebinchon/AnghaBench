
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {struct ae_xattr* xattr_head; } ;
struct ae_xattr {struct ae_xattr* next; } ;



int
archive_entry_xattr_count(struct archive_entry *entry)
{
 struct ae_xattr *xp;
 int count = 0;

 for (xp = entry->xattr_head; xp != ((void*)0); xp = xp->next)
  count++;

 return count;
}
