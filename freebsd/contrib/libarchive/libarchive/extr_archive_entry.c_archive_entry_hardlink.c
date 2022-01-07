
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int ae_set; int ae_hardlink; int archive; } ;


 int AE_SET_HARDLINK ;
 scalar_t__ ENOMEM ;
 int __archive_errx (int,char*) ;
 scalar_t__ archive_mstring_get_mbs (int ,int *,char const**) ;
 scalar_t__ errno ;

const char *
archive_entry_hardlink(struct archive_entry *entry)
{
 const char *p;
 if ((entry->ae_set & AE_SET_HARDLINK) == 0)
  return (((void*)0));
 if (archive_mstring_get_mbs(
     entry->archive, &entry->ae_hardlink, &p) == 0)
  return (p);
 if (errno == ENOMEM)
  __archive_errx(1, "No memory");
 return (((void*)0));
}
