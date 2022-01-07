
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_parser {unsigned int default_priority; } ;



bool
ucl_parser_set_default_priority (struct ucl_parser *parser, unsigned prio)
{
 if (parser == ((void*)0)) {
  return 0;
 }

 parser->default_priority = prio;

 return 1;
}
