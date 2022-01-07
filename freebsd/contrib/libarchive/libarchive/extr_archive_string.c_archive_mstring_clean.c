
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_mstring {scalar_t__ aes_set; int aes_mbs_in_locale; int aes_utf8; int aes_mbs; int aes_wcs; } ;


 int archive_string_free (int *) ;
 int archive_wstring_free (int *) ;

void
archive_mstring_clean(struct archive_mstring *aes)
{
 archive_wstring_free(&(aes->aes_wcs));
 archive_string_free(&(aes->aes_mbs));
 archive_string_free(&(aes->aes_utf8));
 archive_string_free(&(aes->aes_mbs_in_locale));
 aes->aes_set = 0;
}
