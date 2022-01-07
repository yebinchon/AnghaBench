
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_parser {int default_priority; } ;


 int ucl_parser_add_string_priority (struct ucl_parser*,unsigned char const*,size_t,int ) ;

bool
ucl_parser_add_string (struct ucl_parser *parser, const char *data,
  size_t len)
{
 if (parser == ((void*)0)) {
  return 0;
 }

 return ucl_parser_add_string_priority (parser,
   (const unsigned char *)data, len, parser->default_priority);
}
