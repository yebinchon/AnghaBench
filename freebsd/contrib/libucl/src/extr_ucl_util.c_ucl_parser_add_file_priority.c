
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_parser {int dummy; } ;


 int UCL_DUPLICATE_APPEND ;
 int UCL_PARSE_UCL ;
 int ucl_parser_add_file_full (struct ucl_parser*,char const*,unsigned int,int ,int ) ;

bool
ucl_parser_add_file_priority (struct ucl_parser *parser, const char *filename,
  unsigned priority)
{
 if (parser == ((void*)0)) {
  return 0;
 }

 return ucl_parser_add_file_full(parser, filename, priority,
   UCL_DUPLICATE_APPEND, UCL_PARSE_UCL);
}
