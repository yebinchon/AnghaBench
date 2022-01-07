
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_parser {int err; } ;


 size_t strlen (char const*) ;
 int ucl_create_err (int *,char*) ;
 int ucl_parser_add_chunk_priority (struct ucl_parser*,unsigned char const*,size_t,unsigned int) ;

bool
ucl_parser_add_string_priority (struct ucl_parser *parser, const char *data,
  size_t len, unsigned priority)
{
 if (data == ((void*)0)) {
  ucl_create_err (&parser->err, "invalid string added");
  return 0;
 }
 if (len == 0) {
  len = strlen (data);
 }

 return ucl_parser_add_chunk_priority (parser,
   (const unsigned char *)data, len, priority);
}
