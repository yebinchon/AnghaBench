
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int ae_hardlink; int archive; int ae_set; } ;


 int AE_SET_HARDLINK ;
 scalar_t__ ENOMEM ;
 int __archive_errx (int,char*) ;
 scalar_t__ archive_mstring_update_utf8 (int ,int *,char const*) ;
 scalar_t__ errno ;

int
archive_entry_update_hardlink_utf8(struct archive_entry *entry, const char *target)
{
 if (target != ((void*)0))
  entry->ae_set |= AE_SET_HARDLINK;
 else
  entry->ae_set &= ~AE_SET_HARDLINK;
 if (archive_mstring_update_utf8(entry->archive,
     &entry->ae_hardlink, target) == 0)
  return (1);
 if (errno == ENOMEM)
  __archive_errx(1, "No memory");
 return (0);
}
