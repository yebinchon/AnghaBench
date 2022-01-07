
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int ae_uname; int archive; } ;


 scalar_t__ ENOMEM ;
 int __archive_errx (int,char*) ;
 scalar_t__ archive_mstring_get_utf8 (int ,int *,char const**) ;
 scalar_t__ errno ;

const char *
archive_entry_uname_utf8(struct archive_entry *entry)
{
 const char *p;
 if (archive_mstring_get_utf8(entry->archive, &entry->ae_uname, &p) == 0)
  return (p);
 if (errno == ENOMEM)
  __archive_errx(1, "No memory");
 return (((void*)0));
}
