
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int) ;
 scalar_t__ yydebug ;
 scalar_t__ yydictfixed ;
 int yysavedepth ;
 int * yysavewords ;
 int yysettab (int ) ;

void yyresetdict()
{
 if (yydebug)
  printf("yyresetdict(%d)\n", yysavedepth);
 if (yysavedepth > 0) {
  yysettab(yysavewords[--yysavedepth]);
  if (yydebug)
   printf("yysavedepth-- => %d\n", yysavedepth);
 }
 yydictfixed = 0;
}
