
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * ov; } ;
struct TYPE_10__ {void* type; TYPE_1__ value; } ;
typedef TYPE_3__ ucl_object_t ;
struct ucl_stack {int level; TYPE_3__* obj; } ;
struct ucl_parser {int flags; TYPE_3__* cur_obj; int stack; int err; int state; TYPE_2__* chunks; } ;
struct TYPE_9__ {int priority; } ;


 int LL_PREPEND (int ,struct ucl_stack*) ;
 struct ucl_stack* UCL_ALLOC (int) ;
 void* UCL_ARRAY ;
 int UCL_EINTERNAL ;
 void* UCL_OBJECT ;
 int UCL_PARSER_KEY_LOWERCASE ;
 int UCL_STATE_KEY ;
 int UCL_STATE_VALUE ;
 int * ucl_hash_create (int) ;
 TYPE_3__* ucl_object_new_full (void*,int ) ;
 int ucl_object_unref (TYPE_3__*) ;
 int ucl_set_err (struct ucl_parser*,int ,char*,int *) ;

__attribute__((used)) static inline ucl_object_t *
ucl_parser_add_container (ucl_object_t *obj, struct ucl_parser *parser,
  bool is_array, int level)
{
 struct ucl_stack *st;

 if (!is_array) {
  if (obj == ((void*)0)) {
   obj = ucl_object_new_full (UCL_OBJECT, parser->chunks->priority);
  }
  else {
   obj->type = UCL_OBJECT;
  }
  if (obj->value.ov == ((void*)0)) {
   obj->value.ov = ucl_hash_create (parser->flags & UCL_PARSER_KEY_LOWERCASE);
  }
  parser->state = UCL_STATE_KEY;
 }
 else {
  if (obj == ((void*)0)) {
   obj = ucl_object_new_full (UCL_ARRAY, parser->chunks->priority);
  }
  else {
   obj->type = UCL_ARRAY;
  }
  parser->state = UCL_STATE_VALUE;
 }

 st = UCL_ALLOC (sizeof (struct ucl_stack));

 if (st == ((void*)0)) {
  ucl_set_err (parser, UCL_EINTERNAL, "cannot allocate memory for an object",
    &parser->err);
  ucl_object_unref (obj);
  return ((void*)0);
 }

 st->obj = obj;
 st->level = level;
 LL_PREPEND (parser->stack, st);
 parser->cur_obj = obj;

 return obj;
}
