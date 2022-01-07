
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int FILE ;


 int COLON ;
 int NUMBER ;
 int NUMBER_OR_NAME ;
 int STRING ;
 int convert_num (int *,char*,int,int) ;
 int memcpy (int *,char*,unsigned int) ;
 int next_token (char**,int *) ;
 int parse_warn (char*) ;
 int peek_token (char**,int *) ;
 int skip_to_semi (int *) ;
 unsigned int strlen (char*) ;

unsigned
parse_X(FILE *cfile, u_int8_t *buf, unsigned max)
{
 int token;
 char *val;
 unsigned len;

 token = peek_token(&val, cfile);
 if (token == NUMBER_OR_NAME || token == NUMBER) {
  len = 0;
  do {
   token = next_token(&val, cfile);
   if (token != NUMBER && token != NUMBER_OR_NAME) {
    parse_warn("expecting hexadecimal constant.");
    skip_to_semi(cfile);
    return (0);
   }
   convert_num(&buf[len], val, 16, 8);
   if (len++ > max) {
    parse_warn("hexadecimal constant too long.");
    skip_to_semi(cfile);
    return (0);
   }
   token = peek_token(&val, cfile);
   if (token == COLON)
    token = next_token(&val, cfile);
  } while (token == COLON);
  val = (char *)buf;
 } else if (token == STRING) {
  token = next_token(&val, cfile);
  len = strlen(val);
  if (len + 1 > max) {
   parse_warn("string constant too long.");
   skip_to_semi(cfile);
   return (0);
  }
  memcpy(buf, val, len + 1);
 } else {
  parse_warn("expecting string or hexadecimal data");
  skip_to_semi(cfile);
  return (0);
 }
 return (len);
}
