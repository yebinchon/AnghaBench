
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
typedef int uint32_t ;


 int wc_size () ;

__attribute__((used)) static int
unicode_to_wc(wchar_t *wp, uint32_t uc)
{
 if (wc_size() == 4) {
  *wp = (wchar_t)uc;
  return (1);
 }
 if (uc > 0xffff) {


  uc -= 0x10000;
  *wp++ = (wchar_t)(((uc >> 10) & 0x3ff) + 0xD800);
  *wp = (wchar_t)((uc & 0x3ff) + 0xDC00);
  return (2);
 } else {
  *wp = (wchar_t)uc;
  return (1);
 }
}
