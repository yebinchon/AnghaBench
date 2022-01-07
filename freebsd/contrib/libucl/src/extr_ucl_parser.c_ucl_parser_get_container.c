
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ type; } ;
typedef TYPE_3__ ucl_object_t ;
struct ucl_parser {TYPE_3__* cur_obj; TYPE_2__* stack; TYPE_1__* chunks; } ;
struct TYPE_11__ {TYPE_3__* obj; } ;
struct TYPE_10__ {int priority; } ;


 scalar_t__ UCL_ARRAY ;
 int UCL_NULL ;
 int ucl_array_append (TYPE_3__*,TYPE_3__*) ;
 int ucl_attach_comment (struct ucl_parser*,TYPE_3__*,int) ;
 TYPE_3__* ucl_object_new_full (int ,int ) ;
 int ucl_object_unref (TYPE_3__*) ;

__attribute__((used)) static inline ucl_object_t*
ucl_parser_get_container (struct ucl_parser *parser)
{
 ucl_object_t *t, *obj = ((void*)0);

 if (parser == ((void*)0) || parser->stack == ((void*)0) || parser->stack->obj == ((void*)0)) {
  return ((void*)0);
 }

 if (parser->stack->obj->type == UCL_ARRAY) {

  obj = ucl_object_new_full (UCL_NULL, parser->chunks->priority);
  t = parser->stack->obj;

  if (!ucl_array_append (t, obj)) {
   ucl_object_unref (obj);
   return ((void*)0);
  }

  parser->cur_obj = obj;
  ucl_attach_comment (parser, obj, 0);
 }
 else {

  obj = parser->cur_obj;
 }

 return obj;
}
