
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEMI ;
 int next_token (char**,int *) ;
 int parse_warn (char*) ;
 int skip_to_semi (int *) ;

int
parse_semi(FILE *cfile)
{
 int token;
 char *val;

 token = next_token(&val, cfile);
 if (token != SEMI) {
  parse_warn("semicolon expected.");
  skip_to_semi(cfile);
  return (0);
 }
 return (1);
}
