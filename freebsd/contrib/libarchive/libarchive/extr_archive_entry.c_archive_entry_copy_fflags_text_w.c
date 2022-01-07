
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct archive_entry {int ae_fflags_clear; int ae_fflags_set; int ae_fflags_text; } ;


 int const* ae_wcstofflags (int const*,int *,int *) ;
 int archive_mstring_copy_wcs (int *,int const*) ;

const wchar_t *
archive_entry_copy_fflags_text_w(struct archive_entry *entry,
    const wchar_t *flags)
{
 archive_mstring_copy_wcs(&entry->ae_fflags_text, flags);
 return (ae_wcstofflags(flags,
      &entry->ae_fflags_set, &entry->ae_fflags_clear));
}
