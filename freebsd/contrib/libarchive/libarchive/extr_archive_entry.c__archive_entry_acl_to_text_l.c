
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string_conv {int dummy; } ;
struct archive_entry {int acl; } ;
typedef int ssize_t ;


 char* archive_acl_to_text_l (int *,int *,int,struct archive_string_conv*) ;

char *
_archive_entry_acl_to_text_l(struct archive_entry *entry, ssize_t *len,
   int flags, struct archive_string_conv *sc)
{
 return (archive_acl_to_text_l(&entry->acl, len, flags, sc));
}
