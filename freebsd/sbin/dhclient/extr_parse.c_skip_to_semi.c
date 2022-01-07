
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int LBRACE ;
 int RBRACE ;
 int SEMI ;
 int next_token (char**,int *) ;
 int peek_token (char**,int *) ;

void
skip_to_semi(FILE *cfile)
{
 int brace_count = 0, token;
 char *val;

 do {
  token = peek_token(&val, cfile);
  if (token == RBRACE) {
   if (brace_count) {
    token = next_token(&val, cfile);
    if (!--brace_count)
     return;
   } else
    return;
  } else if (token == LBRACE) {
   brace_count++;
  } else if (token == SEMI && !brace_count) {
   token = next_token(&val, cfile);
   return;
  } else if (token == '\n') {






   token = next_token(&val, cfile);
   return;
  }
  token = next_token(&val, cfile);
 } while (token != EOF);
}
