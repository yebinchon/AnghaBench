
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int acl; } ;


 int archive_acl_from_text_l (int *,char const*,int,int *) ;

int
archive_entry_acl_from_text(struct archive_entry *entry,
    const char *text, int type)
{
 return (archive_acl_from_text_l(&entry->acl, text, type, ((void*)0)));
}
