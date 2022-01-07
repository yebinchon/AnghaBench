
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct archive_mstring {int aes_wcs; int aes_utf8; int aes_mbs; scalar_t__ aes_set; } ;


 scalar_t__ AES_SET_WCS ;
 int archive_string_empty (int *) ;
 int archive_wstrncpy (int *,int const*,size_t) ;

int
archive_mstring_copy_wcs_len(struct archive_mstring *aes, const wchar_t *wcs,
    size_t len)
{
 if (wcs == ((void*)0)) {
  aes->aes_set = 0;
  return (0);
 }
 aes->aes_set = AES_SET_WCS;
 archive_string_empty(&(aes->aes_mbs));
 archive_string_empty(&(aes->aes_utf8));
 archive_wstrncpy(&(aes->aes_wcs), wcs, len);
 return (0);
}
