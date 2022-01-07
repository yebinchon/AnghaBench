
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int u_char ;


 int FALSE ;
 scalar_t__ INT_MAX ;
 int TRUE ;
 int isdigit (int ) ;
 int sscanf (char*,char*,scalar_t__*) ;

__attribute__((used)) static int
is_integer(
 char *lexeme
 )
{
 int i;
 int is_neg;
 u_int u_val;

 i = 0;


 if (lexeme[i] == '-') {
  i++;
  is_neg = TRUE;
 } else {
  is_neg = FALSE;
 }


 for (; lexeme[i] != '\0'; i++) {
  if (!isdigit((u_char)lexeme[i]))
   return FALSE;
 }

 if (is_neg)
  return TRUE;


 if (1 == sscanf(lexeme, "%u", &u_val))
  return (u_val <= INT_MAX);
 else
  return FALSE;
}
