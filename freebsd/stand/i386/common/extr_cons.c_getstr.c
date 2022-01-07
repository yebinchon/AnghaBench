
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;
 int putchar (int) ;
 int xgetc (int ) ;

void
getstr(char *cmdstr, size_t cmdstrsize)
{
 char *s;
 int c;

 s = cmdstr;
 for (;;) {
  c = xgetc(0);


  switch (c) {
  case 0x5300:
   c = '\177';
   break;
  default:
   c &= 0xff;
   break;
  }

  switch (c) {
  case '\177':
  case '\b':
   if (s > cmdstr) {
    s--;
    printf("\b \b");
   }
   break;
  case '\n':
  case '\r':
   *s = 0;
   return;
  default:
   if (c >= 0x20 && c <= 0x7e) {
    if (s - cmdstr < cmdstrsize - 1)
     *s++ = c;
    putchar(c);
   }
   break;
  }
 }
}
