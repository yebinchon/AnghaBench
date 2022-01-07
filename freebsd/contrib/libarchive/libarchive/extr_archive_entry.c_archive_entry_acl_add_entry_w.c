
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct archive_entry {int acl; } ;


 int archive_acl_add_entry_w_len (int *,int,int,int,int,int const*,int ) ;
 int wcslen (int const*) ;

int
archive_entry_acl_add_entry_w(struct archive_entry *entry,
    int type, int permset, int tag, int id, const wchar_t *name)
{
 return archive_acl_add_entry_w_len(&entry->acl,
     type, permset, tag, id, name, wcslen(name));
}
