
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_2__ {int const* acl_text_w; } ;
struct archive_entry {TYPE_1__ acl; int archive; } ;


 int const* archive_acl_to_text_w (TYPE_1__*,int *,int,int ) ;
 scalar_t__ archive_entry_acl_text_compat (int*) ;
 int free (int const*) ;

const wchar_t *
archive_entry_acl_text_w(struct archive_entry *entry, int flags)
{
 free(entry->acl.acl_text_w);
 entry->acl.acl_text_w = ((void*)0);
 if (archive_entry_acl_text_compat(&flags) == 0)
  entry->acl.acl_text_w = archive_acl_to_text_w(&entry->acl,
      ((void*)0), flags, entry->archive);
 return (entry->acl.acl_text_w);
}
