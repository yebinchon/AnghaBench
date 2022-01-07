
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* yychars ;
 int yypos ;
 int* yytext ;

__attribute__((used)) static char *yytexttochar()
{
 int i;

 for (i = 0; i < yypos; i++)
  yychars[i] = (char)(yytext[i] & 0xff);
 yychars[i] = '\0';
 return yychars;
}
