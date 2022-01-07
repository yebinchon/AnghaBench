
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int acl; } ;


 int archive_acl_add_entry (int *,int,int,int,int,char const*) ;

int
archive_entry_acl_add_entry(struct archive_entry *entry,
    int type, int permset, int tag, int id, const char *name)
{
 return archive_acl_add_entry(&entry->acl, type, permset, tag, id, name);
}
