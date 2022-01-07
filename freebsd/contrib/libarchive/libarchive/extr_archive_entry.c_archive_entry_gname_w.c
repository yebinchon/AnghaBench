
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct archive_entry {int ae_gname; int archive; } ;


 scalar_t__ ENOMEM ;
 int __archive_errx (int,char*) ;
 scalar_t__ archive_mstring_get_wcs (int ,int *,int const**) ;
 scalar_t__ errno ;

const wchar_t *
archive_entry_gname_w(struct archive_entry *entry)
{
 const wchar_t *p;
 if (archive_mstring_get_wcs(entry->archive, &entry->ae_gname, &p) == 0)
  return (p);
 if (errno == ENOMEM)
  __archive_errx(1, "No memory");
 return (((void*)0));
}
