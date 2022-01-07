
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int ae_pathname; int archive; } ;


 scalar_t__ ENOMEM ;
 int __archive_errx (int,char*) ;
 scalar_t__ archive_mstring_update_utf8 (int ,int *,char const*) ;
 scalar_t__ errno ;

int
archive_entry_update_pathname_utf8(struct archive_entry *entry, const char *name)
{
 if (archive_mstring_update_utf8(entry->archive,
     &entry->ae_pathname, name) == 0)
  return (1);
 if (errno == ENOMEM)
  __archive_errx(1, "No memory");
 return (0);
}
