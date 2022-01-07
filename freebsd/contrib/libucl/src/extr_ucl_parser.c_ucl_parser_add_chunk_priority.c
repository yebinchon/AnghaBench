
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_parser {int dummy; } ;


 int UCL_DUPLICATE_APPEND ;
 int UCL_PARSE_UCL ;
 int ucl_parser_add_chunk_full (struct ucl_parser*,unsigned char const*,size_t,unsigned int,int ,int ) ;

bool
ucl_parser_add_chunk_priority (struct ucl_parser *parser,
  const unsigned char *data, size_t len, unsigned priority)
{

 if (parser == ((void*)0)) {
  return 0;
 }

 return ucl_parser_add_chunk_full (parser, data, len,
    priority, UCL_DUPLICATE_APPEND, UCL_PARSE_UCL);
}
