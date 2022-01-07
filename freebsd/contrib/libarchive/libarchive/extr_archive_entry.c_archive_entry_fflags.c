
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {unsigned long ae_fflags_set; unsigned long ae_fflags_clear; } ;



void
archive_entry_fflags(struct archive_entry *entry,
    unsigned long *set, unsigned long *clear)
{
 *set = entry->ae_fflags_set;
 *clear = entry->ae_fflags_clear;
}
