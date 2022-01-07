
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {struct string_list* next; int string; } ;
typedef int FILE ;


 int COMMA ;
 int SEMI ;
 int STRING ;
 int error (char*) ;
 int memcpy (int ,char*,size_t) ;
 struct string_list* new_string_list (size_t) ;
 int next_token (char**,int *) ;
 int parse_warn (char*) ;
 int skip_to_semi (int *) ;
 int strlen (char*) ;

void
parse_string_list(FILE *cfile, struct string_list **lp, int multiple)
{
 int token;
 char *val;
 size_t valsize;
 struct string_list *cur, *tmp;


 if (*lp)
  for (cur = *lp; cur->next; cur = cur->next)
   ;
 else
  cur = ((void*)0);

 do {
  token = next_token(&val, cfile);
  if (token != STRING) {
   parse_warn("Expecting media options.");
   skip_to_semi(cfile);
   return;
  }

  valsize = strlen(val) + 1;
  tmp = new_string_list(valsize);
  if (tmp == ((void*)0))
   error("no memory for string list entry.");
  memcpy(tmp->string, val, valsize);
  tmp->next = ((void*)0);


  if (cur)
   cur->next = tmp;
  else
   *lp = tmp;
  cur = tmp;

  token = next_token(&val, cfile);
 } while (multiple && token == COMMA);

 if (token != SEMI) {
  parse_warn("expecting semicolon.");
  skip_to_semi(cfile);
 }
}
