
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int FALSE ;
 int TRUE ;
 int isdigit (int ) ;
 int isxdigit (int ) ;
 char tolower (int ) ;

__attribute__((used)) static int
is_u_int(
 char *lexeme
 )
{
 int i;
 int is_hex;

 i = 0;
 if ('0' == lexeme[i] && 'x' == tolower((u_char)lexeme[i + 1])) {
  i += 2;
  is_hex = TRUE;
 } else {
  is_hex = FALSE;
 }


 for (; lexeme[i] != '\0'; i++) {
  if (is_hex && !isxdigit((u_char)lexeme[i]))
   return FALSE;
  if (!is_hex && !isdigit((u_char)lexeme[i]))
   return FALSE;
 }

 return TRUE;
}
