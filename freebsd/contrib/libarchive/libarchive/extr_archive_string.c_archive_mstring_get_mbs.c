
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* s; } ;
struct TYPE_4__ {int length; int s; } ;
struct archive_mstring {int aes_set; TYPE_2__ aes_mbs; TYPE_1__ aes_wcs; } ;
struct archive {int dummy; } ;


 int AES_SET_MBS ;
 int AES_SET_WCS ;
 int archive_string_append_from_wcs (TYPE_2__*,int ,int ) ;
 int archive_string_empty (TYPE_2__*) ;

int
archive_mstring_get_mbs(struct archive *a, struct archive_mstring *aes,
    const char **p)
{
 int r, ret = 0;

 (void)a;

 if (aes->aes_set & AES_SET_MBS) {
  *p = aes->aes_mbs.s;
  return (ret);
 }

 *p = ((void*)0);

 if (aes->aes_set & AES_SET_WCS) {
  archive_string_empty(&(aes->aes_mbs));
  r = archive_string_append_from_wcs(&(aes->aes_mbs),
      aes->aes_wcs.s, aes->aes_wcs.length);
  *p = aes->aes_mbs.s;
  if (r == 0) {
   aes->aes_set |= AES_SET_MBS;
   return (ret);
  } else
   ret = -1;
 }





 return (ret);
}
