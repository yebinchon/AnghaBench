
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct archive_entry {int ae_sourcepath; int archive; } ;


 scalar_t__ archive_mstring_get_wcs (int ,int *,int const**) ;

const wchar_t *
archive_entry_sourcepath_w(struct archive_entry *entry)
{
 const wchar_t *p;
 if (archive_mstring_get_wcs(
     entry->archive, &entry->ae_sourcepath, &p) == 0)
  return (p);
 return (((void*)0));
}
