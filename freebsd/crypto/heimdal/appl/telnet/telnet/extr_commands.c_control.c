
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cc_t ;


 scalar_t__ _POSIX_VDISABLE ;

__attribute__((used)) static char *
control(cc_t c)
{
 static char buf[5];







 unsigned int uic = (unsigned int)c;

 if (uic == 0x7f)
  return ("^?");
 if (c == (cc_t)_POSIX_VDISABLE) {
  return "off";
 }
 if (uic >= 0x80) {
  buf[0] = '\\';
  buf[1] = ((c>>6)&07) + '0';
  buf[2] = ((c>>3)&07) + '0';
  buf[3] = (c&07) + '0';
  buf[4] = 0;
 } else if (uic >= 0x20) {
  buf[0] = c;
  buf[1] = 0;
 } else {
  buf[0] = '^';
  buf[1] = '@'+c;
  buf[2] = 0;
 }
 return (buf);
}
