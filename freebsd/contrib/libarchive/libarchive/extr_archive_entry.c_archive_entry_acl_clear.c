
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int acl; } ;


 int archive_acl_clear (int *) ;

void
archive_entry_acl_clear(struct archive_entry *entry)
{
 archive_acl_clear(&entry->acl);
}
