
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {unsigned long ae_fflags_set; unsigned long ae_fflags_clear; int ae_fflags_text; } ;


 int archive_mstring_clean (int *) ;

void
archive_entry_set_fflags(struct archive_entry *entry,
    unsigned long set, unsigned long clear)
{
 archive_mstring_clean(&entry->ae_fflags_text);
 entry->ae_fflags_set = set;
 entry->ae_fflags_clear = clear;
}
