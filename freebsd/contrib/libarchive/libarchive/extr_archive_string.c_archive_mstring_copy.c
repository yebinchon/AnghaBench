
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_mstring {int aes_wcs; int aes_utf8; int aes_mbs; int aes_set; } ;


 int archive_string_copy (int *,int *) ;
 int archive_wstring_copy (int *,int *) ;

void
archive_mstring_copy(struct archive_mstring *dest, struct archive_mstring *src)
{
 dest->aes_set = src->aes_set;
 archive_string_copy(&(dest->aes_mbs), &(src->aes_mbs));
 archive_string_copy(&(dest->aes_utf8), &(src->aes_utf8));
 archive_wstring_copy(&(dest->aes_wcs), &(src->aes_wcs));
}
