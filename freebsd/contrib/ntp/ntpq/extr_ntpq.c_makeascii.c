
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
typedef int FILE ;


 int putc (int,int *) ;

void
makeascii(
 size_t length,
 const char *data,
 FILE *fp
 )
{
 const u_char *data_u_char;
 const u_char *cp;
 int c;

 data_u_char = (const u_char *)data;

 for (cp = data_u_char; cp < data_u_char + length; cp++) {
  c = (int)*cp;
  if (c & 0x80) {
   putc('M', fp);
   putc('-', fp);
   c &= 0x7f;
  }

  if (c < ' ') {
   putc('^', fp);
   putc(c + '@', fp);
  } else if (0x7f == c) {
   putc('^', fp);
   putc('?', fp);
  } else
   putc(c, fp);
 }
}
