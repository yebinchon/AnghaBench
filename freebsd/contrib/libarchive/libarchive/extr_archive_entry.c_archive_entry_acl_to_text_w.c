
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct archive_entry {int archive; int acl; } ;
typedef int la_ssize_t ;


 int * archive_acl_to_text_w (int *,int *,int,int ) ;

wchar_t *
archive_entry_acl_to_text_w(struct archive_entry *entry, la_ssize_t *len,
    int flags)
{
 return (archive_acl_to_text_w(&entry->acl, len, flags,
     entry->archive));
}
