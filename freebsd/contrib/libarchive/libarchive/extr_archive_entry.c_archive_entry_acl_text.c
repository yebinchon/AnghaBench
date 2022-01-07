
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* acl_text; } ;
struct archive_entry {TYPE_1__ acl; } ;


 char const* archive_acl_to_text_l (TYPE_1__*,int *,int,int *) ;
 scalar_t__ archive_entry_acl_text_compat (int*) ;
 int free (char const*) ;

const char *
archive_entry_acl_text(struct archive_entry *entry, int flags)
{
 free(entry->acl.acl_text);
 entry->acl.acl_text = ((void*)0);
 if (archive_entry_acl_text_compat(&flags) == 0)
  entry->acl.acl_text = archive_acl_to_text_l(&entry->acl, ((void*)0),
      flags, ((void*)0));

 return (entry->acl.acl_text);
}
