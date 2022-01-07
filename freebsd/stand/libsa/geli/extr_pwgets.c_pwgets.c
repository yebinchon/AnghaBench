
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getchar () ;
 int putchar (char) ;

void
pwgets(char *buf, int n, int hide)
{
    int c;
    char *lp;

    for (lp = buf;;)
 switch (c = getchar() & 0177) {
 case '\n':
 case '\r':
     *lp = '\0';
     putchar('\n');
     return;
 case '\b':
 case '\177':
     if (lp > buf) {
  lp--;
  if (hide == 0) {
   putchar('\b');
   putchar(' ');
   putchar('\b');
  }
     }
     break;
 case 'u'&037:
 case 'w'&037:
     lp = buf;
     putchar('\n');
     break;
 default:
     if ((n < 1) || ((lp - buf) < n - 1)) {
  *lp++ = c;
  if (hide == 0) {
   putchar('*');
  }
     }
 }

}
