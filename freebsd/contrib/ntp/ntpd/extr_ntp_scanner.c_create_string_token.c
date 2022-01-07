
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int Integer; int String; } ;


 int T_EOC ;
 int T_String ;
 int estrdup (char*) ;
 scalar_t__ isspace (int ) ;
 TYPE_1__ yylval ;

__attribute__((used)) static int
create_string_token(
 char *lexeme
 )
{
 char *pch;




 pch = lexeme;
 while (*pch && isspace((u_char)*pch))
  pch++;

 if (!*pch) {
  yylval.Integer = T_EOC;
  return yylval.Integer;
 }

 yylval.String = estrdup(lexeme);
 return T_String;
}
