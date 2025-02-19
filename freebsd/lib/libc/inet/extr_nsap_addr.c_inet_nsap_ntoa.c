
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 char* inet_nsap_ntoa_tmpbuf ;

char *
inet_nsap_ntoa(int binlen, const u_char *binary, char *ascii) {
 int nib;
 int i;
 char *tmpbuf = inet_nsap_ntoa_tmpbuf;
 char *start;

 if (ascii)
  start = ascii;
 else {
  ascii = tmpbuf;
  start = tmpbuf;
 }

 *ascii++ = '0';
 *ascii++ = 'x';

 if (binlen > 255)
  binlen = 255;

 for (i = 0; i < binlen; i++) {
  nib = *binary >> 4;
  *ascii++ = nib + (nib < 10 ? '0' : '7');
  nib = *binary++ & 0x0f;
  *ascii++ = nib + (nib < 10 ? '0' : '7');
  if (((i % 2) == 0 && (i + 1) < binlen))
   *ascii++ = '.';
 }
 *ascii = '\0';
 return (start);
}
