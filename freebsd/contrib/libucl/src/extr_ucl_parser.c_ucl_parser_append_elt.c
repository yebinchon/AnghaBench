
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int flags; int keylen; int key; } ;
typedef TYPE_3__ ucl_object_t ;
typedef int ucl_hash_t ;
struct ucl_parser {int flags; TYPE_2__* stack; } ;
struct TYPE_14__ {TYPE_1__* obj; } ;
struct TYPE_13__ {int len; } ;


 int DL_APPEND (TYPE_3__*,TYPE_3__*) ;
 int UCL_ARRAY ;
 int UCL_OBJECT_MULTIVALUE ;
 int UCL_PARSER_NO_IMPLICIT_ARRAYS ;
 int ucl_array_append (TYPE_3__*,TYPE_3__*) ;
 int ucl_hash_replace (int *,TYPE_3__*,TYPE_3__*) ;
 TYPE_3__* ucl_object_typed_new (int ) ;

__attribute__((used)) static void
ucl_parser_append_elt (struct ucl_parser *parser, ucl_hash_t *cont,
  ucl_object_t *top,
  ucl_object_t *elt)
{
 ucl_object_t *nobj;

 if ((parser->flags & UCL_PARSER_NO_IMPLICIT_ARRAYS) == 0) {

  top->flags |= UCL_OBJECT_MULTIVALUE;
  DL_APPEND (top, elt);
  parser->stack->obj->len ++;
 }
 else {
  if ((top->flags & UCL_OBJECT_MULTIVALUE) != 0) {

   ucl_array_append (top, elt);
  }
  else {

   nobj = ucl_object_typed_new (UCL_ARRAY);
   nobj->key = top->key;
   nobj->keylen = top->keylen;
   nobj->flags |= UCL_OBJECT_MULTIVALUE;
   ucl_array_append (nobj, top);
   ucl_array_append (nobj, elt);
   ucl_hash_replace (cont, top, nobj);
  }
 }
}
