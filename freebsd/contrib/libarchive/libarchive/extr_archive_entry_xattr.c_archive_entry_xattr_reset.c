
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int xattr_head; int xattr_p; } ;


 int archive_entry_xattr_count (struct archive_entry*) ;

int
archive_entry_xattr_reset(struct archive_entry * entry)
{
 entry->xattr_p = entry->xattr_head;

 return archive_entry_xattr_count(entry);
}
