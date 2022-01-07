
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fmprintf (int ,char*,char*) ;
 int isalpha (int) ;
 int isdigit (unsigned char) ;
 int stderr ;

int
okname(char *cp0)
{
 int c;
 char *cp;

 cp = cp0;
 do {
  c = (int)*cp;
  if (c & 0200)
   goto bad;
  if (!isalpha(c) && !isdigit((unsigned char)c)) {
   switch (c) {
   case '\'':
   case '"':
   case '`':
   case ' ':
   case '#':
    goto bad;
   default:
    break;
   }
  }
 } while (*++cp);
 return (1);

bad: fmprintf(stderr, "%s: invalid user name\n", cp0);
 return (0);
}
