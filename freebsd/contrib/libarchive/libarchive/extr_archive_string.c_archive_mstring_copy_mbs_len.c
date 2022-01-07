
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_mstring {int aes_wcs; int aes_utf8; int aes_mbs; scalar_t__ aes_set; } ;


 scalar_t__ AES_SET_MBS ;
 int archive_string_empty (int *) ;
 int archive_strncpy (int *,char const*,size_t) ;
 int archive_wstring_empty (int *) ;

int
archive_mstring_copy_mbs_len(struct archive_mstring *aes, const char *mbs,
    size_t len)
{
 if (mbs == ((void*)0)) {
  aes->aes_set = 0;
  return (0);
 }
 aes->aes_set = AES_SET_MBS;
 archive_strncpy(&(aes->aes_mbs), mbs, len);
 archive_string_empty(&(aes->aes_utf8));
 archive_wstring_empty(&(aes->aes_wcs));
 return (0);
}
