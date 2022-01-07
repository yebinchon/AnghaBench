
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct archive_entry {int ae_sourcepath; } ;


 int archive_mstring_copy_wcs (int *,int const*) ;

void
archive_entry_copy_sourcepath_w(struct archive_entry *entry, const wchar_t *path)
{
 archive_mstring_copy_wcs(&entry->ae_sourcepath, path);
}
