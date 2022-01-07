
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int get_token (int *) ;
 int lexchar ;
 int lexline ;
 int prev_line ;
 int tline ;
 int tlpos ;
 int token ;
 int token_line ;
 char* tval ;

int
peek_token(char **rval, FILE *cfile)
{
 int x;

 if (!token) {
  tlpos = lexchar;
  tline = lexline;
  token = get_token(cfile);
  if (lexline != tline)
   token_line = prev_line;
  x = lexchar;
  lexchar = tlpos;
  tlpos = x;
  x = lexline;
  lexline = tline;
  tline = x;
 }
 if (rval)
  *rval = tval;

 return (token);
}
