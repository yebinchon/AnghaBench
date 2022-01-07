
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uschar ;


 int EOF ;
 int* ebuf ;
 int* ep ;
 int pgetc () ;
 scalar_t__* yysbuf ;
 scalar_t__* yysptr ;

int input(void)
{
 int c;
 extern char *lexprog;

 if (yysptr > yysbuf)
  c = (uschar)*--yysptr;
 else if (lexprog != ((void*)0)) {
  if ((c = (uschar)*lexprog) != 0)
   lexprog++;
 } else
  c = pgetc();
 if (c == EOF)
  c = 0;
 if (ep >= ebuf + sizeof ebuf)
  ep = ebuf;
 *ep = c;
 if (c != 0) {
  ep++;
 }
 return (c);
}
