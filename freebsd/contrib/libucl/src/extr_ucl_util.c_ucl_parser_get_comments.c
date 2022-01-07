
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
struct ucl_parser {int const* comments; } ;



const ucl_object_t *
ucl_parser_get_comments (struct ucl_parser *parser)
{
 if (parser && parser->comments) {
  return parser->comments;
 }

 return ((void*)0);
}
