
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iaddr {int dummy; } ;
struct iaddrlist {struct iaddrlist* next; struct iaddr addr; } ;
struct client_config {struct iaddrlist* reject_list; } ;
typedef int FILE ;


 int COMMA ;
 int SEMI ;
 int error (char*) ;
 struct iaddrlist* malloc (int) ;
 int next_token (char**,int *) ;
 int parse_ip_addr (int *,struct iaddr*) ;
 int parse_warn (char*) ;
 int skip_to_semi (int *) ;

void
parse_reject_statement(FILE *cfile, struct client_config *config)
{
 int token;
 char *val;
 struct iaddr addr;
 struct iaddrlist *list;

 do {
  if (!parse_ip_addr(cfile, &addr)) {
   parse_warn("expecting IP address.");
   skip_to_semi(cfile);
   return;
  }

  list = malloc(sizeof(struct iaddrlist));
  if (!list)
   error("no memory for reject list!");

  list->addr = addr;
  list->next = config->reject_list;
  config->reject_list = list;

  token = next_token(&val, cfile);
 } while (token == COMMA);

 if (token != SEMI) {
  parse_warn("expecting semicolon.");
  skip_to_semi(cfile);
 }
}
