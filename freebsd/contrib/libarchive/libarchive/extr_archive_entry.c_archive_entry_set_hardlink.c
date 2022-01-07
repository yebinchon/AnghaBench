
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int ae_set; int ae_hardlink; } ;


 int AE_SET_HARDLINK ;
 int archive_mstring_copy_mbs (int *,char const*) ;

void
archive_entry_set_hardlink(struct archive_entry *entry, const char *target)
{
 archive_mstring_copy_mbs(&entry->ae_hardlink, target);
 if (target != ((void*)0))
  entry->ae_set |= AE_SET_HARDLINK;
 else
  entry->ae_set &= ~AE_SET_HARDLINK;
}
