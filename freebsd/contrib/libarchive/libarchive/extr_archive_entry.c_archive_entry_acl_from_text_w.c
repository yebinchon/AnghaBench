
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct archive_entry {int acl; } ;


 int archive_acl_from_text_w (int *,int const*,int) ;

int
archive_entry_acl_from_text_w(struct archive_entry *entry,
    const wchar_t *wtext, int type)
{
 return (archive_acl_from_text_w(&entry->acl, wtext, type));
}
