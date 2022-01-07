
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int acl; } ;


 int archive_acl_types (int *) ;

int
archive_entry_acl_types(struct archive_entry *entry)
{
 return (archive_acl_types(&entry->acl));
}
