
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct archive_mstring {int dummy; } ;


 int archive_mstring_copy_wcs_len (struct archive_mstring*,int const*,int ) ;
 int wcslen (int const*) ;

int
archive_mstring_copy_wcs(struct archive_mstring *aes, const wchar_t *wcs)
{
 return archive_mstring_copy_wcs_len(aes, wcs,
    wcs == ((void*)0) ? 0 : wcslen(wcs));
}
