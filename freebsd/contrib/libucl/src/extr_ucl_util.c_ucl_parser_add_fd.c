
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_parser {int default_priority; } ;


 int ucl_parser_add_fd_priority (struct ucl_parser*,int,int ) ;

bool
ucl_parser_add_fd (struct ucl_parser *parser, int fd)
{
 if (parser == ((void*)0)) {
  return 0;
 }

 return ucl_parser_add_fd_priority(parser, fd, parser->default_priority);
}
