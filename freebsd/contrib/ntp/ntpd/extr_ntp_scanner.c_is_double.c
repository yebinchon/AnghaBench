
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
typedef int u_char ;


 scalar_t__ isdigit (int ) ;
 char tolower (int ) ;

__attribute__((used)) static int
is_double(
 char *lexeme
 )
{
 u_int num_digits = 0;
 u_int i;

 i = 0;


 if ('+' == lexeme[i] || '-' == lexeme[i])
  i++;


 for (; lexeme[i] && isdigit((u_char)lexeme[i]); i++)
  num_digits++;


 if ('.' == lexeme[i]) {
  i++;

  for (; lexeme[i] && isdigit((u_char)lexeme[i]); i++)
   num_digits++;
 }





 if (!num_digits)
  return 0;


 if (!lexeme[i])
  return 1;


 if ('e' == tolower((u_char)lexeme[i]))
  i++;
 else
  return 0;


 if ('+' == lexeme[i] || '-' == lexeme[i])
  i++;


 while (lexeme[i] && isdigit((u_char)lexeme[i]))
  i++;


 if (!lexeme[i])
  return 1;
 else
  return 0;
}
