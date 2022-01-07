
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_5__ {int * s; } ;
struct TYPE_4__ {int length; int s; } ;
struct archive_mstring {int aes_set; TYPE_2__ aes_wcs; TYPE_1__ aes_mbs; } ;
struct archive {int dummy; } ;


 int AES_SET_MBS ;
 int AES_SET_WCS ;
 int archive_wstring_append_from_mbs (TYPE_2__*,int ,int ) ;
 int archive_wstring_empty (TYPE_2__*) ;

int
archive_mstring_get_wcs(struct archive *a, struct archive_mstring *aes,
    const wchar_t **wp)
{
 int r, ret = 0;

 (void)a;

 if (aes->aes_set & AES_SET_WCS) {
  *wp = aes->aes_wcs.s;
  return (ret);
 }

 *wp = ((void*)0);

 if (aes->aes_set & AES_SET_MBS) {
  archive_wstring_empty(&(aes->aes_wcs));
  r = archive_wstring_append_from_mbs(&(aes->aes_wcs),
      aes->aes_mbs.s, aes->aes_mbs.length);
  if (r == 0) {
   aes->aes_set |= AES_SET_WCS;
   *wp = aes->aes_wcs.s;
  } else
   ret = -1;
 }
 return (ret);
}
