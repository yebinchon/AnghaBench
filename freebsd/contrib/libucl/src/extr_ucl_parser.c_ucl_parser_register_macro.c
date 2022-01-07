
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * ucl_macro_handler ;
struct ucl_parser {int macroes; } ;
struct TYPE_2__ {int * handler; } ;
struct ucl_macro {int name; void* ud; TYPE_1__ h; } ;


 int HASH_ADD_KEYPTR (int ,int ,int ,int ,struct ucl_macro*) ;
 struct ucl_macro* UCL_ALLOC (int) ;
 int hh ;
 int memset (struct ucl_macro*,int ,int) ;
 int strdup (char const*) ;
 int strlen (int ) ;

void
ucl_parser_register_macro (struct ucl_parser *parser, const char *macro,
  ucl_macro_handler handler, void* ud)
{
 struct ucl_macro *new;

 if (macro == ((void*)0) || handler == ((void*)0)) {
  return;
 }

 new = UCL_ALLOC (sizeof (struct ucl_macro));
 if (new == ((void*)0)) {
  return;
 }

 memset (new, 0, sizeof (struct ucl_macro));
 new->h.handler = handler;
 new->name = strdup (macro);
 new->ud = ud;
 HASH_ADD_KEYPTR (hh, parser->macroes, new->name, strlen (new->name), new);
}
