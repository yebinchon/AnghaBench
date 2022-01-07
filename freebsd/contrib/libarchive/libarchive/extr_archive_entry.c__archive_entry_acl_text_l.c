
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_string_conv {int dummy; } ;
struct TYPE_2__ {char* acl_text; } ;
struct archive_entry {TYPE_1__ acl; } ;
typedef int ssize_t ;


 char* archive_acl_to_text_l (TYPE_1__*,int *,int,struct archive_string_conv*) ;
 scalar_t__ archive_entry_acl_text_compat (int*) ;
 int free (char*) ;

int
_archive_entry_acl_text_l(struct archive_entry *entry, int flags,
    const char **acl_text, size_t *len, struct archive_string_conv *sc)
{
 free(entry->acl.acl_text);
 entry->acl.acl_text = ((void*)0);

 if (archive_entry_acl_text_compat(&flags) == 0)
  entry->acl.acl_text = archive_acl_to_text_l(&entry->acl,
      (ssize_t *)len, flags, sc);

 *acl_text = entry->acl.acl_text;

 return (0);
}
