
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct archive_string_conv {scalar_t__ cd_w; scalar_t__ cd; int flag; unsigned int from_cp; } ;
struct TYPE_4__ {char const* s; size_t length; } ;
struct archive_mstring {void* aes_set; TYPE_1__ aes_mbs; int aes_wcs; TYPE_1__ aes_utf8; } ;
typedef scalar_t__ iconv_t ;


 void* AES_SET_MBS ;
 void* AES_SET_UTF8 ;
 void* AES_SET_WCS ;
 unsigned int CP_UTF8 ;
 int SCONV_FROM_UTF16 ;
 int SCONV_NORMALIZATION_C ;
 int SCONV_TO_UTF16 ;
 int * archive_string_append (TYPE_1__*,char const*,int ) ;
 int archive_string_empty (TYPE_1__*) ;
 int archive_strncpy_l (TYPE_1__*,char const*,size_t,struct archive_string_conv*) ;
 int archive_wstring_append_from_mbs_in_codepage (int *,char const*,size_t,struct archive_string_conv*) ;
 int archive_wstring_empty (int *) ;
 int mbsnbytes (char const*,size_t) ;

int
archive_mstring_copy_mbs_len_l(struct archive_mstring *aes,
    const char *mbs, size_t len, struct archive_string_conv *sc)
{
 int r;

 if (mbs == ((void*)0)) {
  aes->aes_set = 0;
  return (0);
 }
 archive_string_empty(&(aes->aes_mbs));
 archive_wstring_empty(&(aes->aes_wcs));
 archive_string_empty(&(aes->aes_utf8));
 r = archive_strncpy_l(&(aes->aes_mbs), mbs, len, sc);
 if (r == 0)
  aes->aes_set = AES_SET_MBS;
 else
  aes->aes_set = 0;

 return (r);
}
