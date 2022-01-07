
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_variable_handler ;
struct ucl_parser {void* var_data; int var_handler; } ;



void
ucl_parser_set_variables_handler (struct ucl_parser *parser,
  ucl_variable_handler handler, void *ud)
{
 parser->var_handler = handler;
 parser->var_data = ud;
}
