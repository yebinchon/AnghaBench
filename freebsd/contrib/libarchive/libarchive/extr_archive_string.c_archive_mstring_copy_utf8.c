
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_mstring {int aes_utf8; int aes_wcs; int aes_mbs; scalar_t__ aes_set; } ;


 scalar_t__ AES_SET_UTF8 ;
 int archive_string_empty (int *) ;
 int archive_strncpy (int *,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

int
archive_mstring_copy_utf8(struct archive_mstring *aes, const char *utf8)
{
  if (utf8 == ((void*)0)) {
    aes->aes_set = 0;
    return (0);
  }
  aes->aes_set = AES_SET_UTF8;
  archive_string_empty(&(aes->aes_mbs));
  archive_string_empty(&(aes->aes_wcs));
  archive_strncpy(&(aes->aes_utf8), utf8, strlen(utf8));
  return (int)strlen(utf8);
}
