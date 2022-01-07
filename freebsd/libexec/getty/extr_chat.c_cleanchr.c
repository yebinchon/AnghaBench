
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcpy (char*,char*) ;

__attribute__((used)) static char *
cleanchr(char **buf, unsigned char ch)
{
 int l;
 static char tmpbuf[5];
 char * tmp = buf ? *buf : tmpbuf;

 if (ch & 0x80) {
  strcpy(tmp, "M-");
  l = 2;
  ch &= 0x7f;
 } else
 l = 0;

 if (ch < 32) {
  tmp[l++] = '^';
  tmp[l++] = ch + '@';
 } else if (ch == 127) {
  tmp[l++] = '^';
  tmp[l++] = '?';
 } else
  tmp[l++] = ch;
 tmp[l] = '\0';

 if (buf)
  *buf = tmp + l;
 return tmp;
}
