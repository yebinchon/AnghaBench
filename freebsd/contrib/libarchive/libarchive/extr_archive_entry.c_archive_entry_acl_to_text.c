
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int acl; } ;
typedef int la_ssize_t ;


 char* archive_acl_to_text_l (int *,int *,int,int *) ;

char *
archive_entry_acl_to_text(struct archive_entry *entry, la_ssize_t *len,
    int flags)
{
 return (archive_acl_to_text_l(&entry->acl, len, flags, ((void*)0)));
}
