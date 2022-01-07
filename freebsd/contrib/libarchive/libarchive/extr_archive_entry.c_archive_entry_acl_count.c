
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int acl; } ;


 int archive_acl_count (int *,int) ;

int
archive_entry_acl_count(struct archive_entry *entry, int want_type)
{
 return archive_acl_count(&entry->acl, want_type);
}
