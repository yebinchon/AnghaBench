
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_parser {int * err; } ;


 char const* utstring_body (int *) ;

const char *
ucl_parser_get_error(struct ucl_parser *parser)
{
 if (parser == ((void*)0)) {
  return ((void*)0);
 }

 if (parser->err == ((void*)0)) {
  return ((void*)0);
 }

 return utstring_body (parser->err);
}
