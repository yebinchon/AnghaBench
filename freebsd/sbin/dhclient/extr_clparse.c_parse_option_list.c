
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
struct TYPE_2__ {int name; } ;
typedef int FILE ;


 int COMMA ;
 int SEMI ;
 TYPE_1__* dhcp_options ;
 int is_identifier (int) ;
 int next_token (char**,int *) ;
 int parse_warn (char*,...) ;
 int skip_to_semi (int *) ;
 int strcasecmp (int ,char*) ;

int
parse_option_list(FILE *cfile, u_int8_t *list)
{
 int ix, i;
 int token;
 char *val;

 ix = 0;
 do {
  token = next_token(&val, cfile);
  if (!is_identifier(token)) {
   parse_warn("expected option name.");
   skip_to_semi(cfile);
   return (0);
  }
  for (i = 0; i < 256; i++)
   if (!strcasecmp(dhcp_options[i].name, val))
    break;

  if (i == 256) {
   parse_warn("%s: unexpected option name.", val);
   skip_to_semi(cfile);
   return (0);
  }
  list[ix++] = i;
  if (ix == 256) {
   parse_warn("%s: too many options.", val);
   skip_to_semi(cfile);
   return (0);
  }
  token = next_token(&val, cfile);
 } while (token == COMMA);
 if (token != SEMI) {
  parse_warn("expecting semicolon.");
  skip_to_semi(cfile);
  return (0);
 }
 return (ix);
}
