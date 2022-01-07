
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucl_parser {TYPE_1__* chunks; } ;
struct TYPE_2__ {int column; } ;



unsigned
ucl_parser_get_column(struct ucl_parser *parser)
{
 if (parser == ((void*)0) || parser->chunks == ((void*)0)) {
  return 0;
 }

 return parser->chunks->column;
}
