
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_parser {int err_code; } ;



int
ucl_parser_get_error_code(struct ucl_parser *parser)
{
 if (parser == ((void*)0)) {
  return 0;
 }

 return parser->err_code;
}
