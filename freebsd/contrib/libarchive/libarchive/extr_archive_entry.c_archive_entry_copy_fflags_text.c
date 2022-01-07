
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int ae_fflags_clear; int ae_fflags_set; int ae_fflags_text; } ;


 char const* ae_strtofflags (char const*,int *,int *) ;
 int archive_mstring_copy_mbs (int *,char const*) ;

const char *
archive_entry_copy_fflags_text(struct archive_entry *entry,
    const char *flags)
{
 archive_mstring_copy_mbs(&entry->ae_fflags_text, flags);
 return (ae_strtofflags(flags,
      &entry->ae_fflags_set, &entry->ae_fflags_clear));
}
