
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int cur_line ;
 int get_token (int *) ;
 int lexchar ;
 scalar_t__ lexline ;
 scalar_t__ tline ;
 int tlpos ;
 int token ;
 int token_line ;
 char* tval ;

int
next_token(char **rval, FILE *cfile)
{
 int rv;

 if (token) {
  if (lexline != tline)
   token_line = cur_line;
  lexchar = tlpos;
  lexline = tline;
  rv = token;
  token = 0;
 } else {
  rv = get_token(cfile);
  token_line = cur_line;
 }
 if (rval)
  *rval = tval;

 return (rv);
}
