
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct archive_string_conv {int dummy; } ;
struct TYPE_4__ {char* s; } ;
struct TYPE_3__ {int length; int s; } ;
struct archive_mstring {int aes_set; TYPE_2__ aes_utf8; TYPE_1__ aes_mbs; } ;
struct archive {int dummy; } ;


 int AES_SET_MBS ;
 int AES_SET_UTF8 ;
 struct archive_string_conv* archive_string_conversion_to_charset (struct archive*,char*,int) ;
 int archive_strncpy_l (TYPE_2__*,int ,int ,struct archive_string_conv*) ;
 int free_sconv_object (struct archive_string_conv*) ;

int
archive_mstring_get_utf8(struct archive *a, struct archive_mstring *aes,
  const char **p)
{
 struct archive_string_conv *sc;
 int r;


 if (aes->aes_set & AES_SET_UTF8) {
  *p = aes->aes_utf8.s;
  return (0);
 }

 *p = ((void*)0);
 if (aes->aes_set & AES_SET_MBS) {
  sc = archive_string_conversion_to_charset(a, "UTF-8", 1);
  if (sc == ((void*)0))
   return (-1);
  r = archive_strncpy_l(&(aes->aes_utf8), aes->aes_mbs.s,
      aes->aes_mbs.length, sc);
  if (a == ((void*)0))
   free_sconv_object(sc);
  if (r == 0) {
   aes->aes_set |= AES_SET_UTF8;
   *p = aes->aes_utf8.s;
   return (0);
  } else
   return (-1);
 }
 return (0);
}
