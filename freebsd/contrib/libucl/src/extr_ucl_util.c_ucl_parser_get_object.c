
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
struct ucl_parser {scalar_t__ state; int * top_obj; } ;


 scalar_t__ UCL_STATE_ERROR ;
 int * ucl_object_ref (int *) ;

ucl_object_t*
ucl_parser_get_object (struct ucl_parser *parser)
{
 if (parser->state != UCL_STATE_ERROR && parser->top_obj != ((void*)0)) {
  return ucl_object_ref (parser->top_obj);
 }

 return ((void*)0);
}
