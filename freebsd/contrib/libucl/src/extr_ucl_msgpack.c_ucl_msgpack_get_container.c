
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ucl_stack {int level; struct ucl_stack* next; } ;
struct ucl_parser {struct ucl_stack* stack; int err; } ;
struct ucl_msgpack_parser {int flags; } ;


 int MSGPACK_CONTAINER_BIT ;
 int MSGPACK_FLAG_ASSOC ;
 int MSGPACK_FLAG_CONTAINER ;
 int assert (int) ;
 void* calloc (int,int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int ucl_create_err (int *,char*) ;

__attribute__((used)) static inline struct ucl_stack *
ucl_msgpack_get_container (struct ucl_parser *parser,
  struct ucl_msgpack_parser *obj_parser, uint64_t len)
{
 struct ucl_stack *stack;

 assert (obj_parser != ((void*)0));

 if (obj_parser->flags & MSGPACK_FLAG_CONTAINER) {
  assert ((len & MSGPACK_CONTAINER_BIT) == 0);



  if (parser->stack == ((void*)0)) {
   parser->stack = calloc (1, sizeof (struct ucl_stack));

   if (parser->stack == ((void*)0)) {
    ucl_create_err (&parser->err, "no memory");
    return ((void*)0);
   }
  }
  else {
   stack = calloc (1, sizeof (struct ucl_stack));

   if (stack == ((void*)0)) {
    ucl_create_err (&parser->err, "no memory");
    return ((void*)0);
   }

   stack->next = parser->stack;
   parser->stack = stack;
  }

  parser->stack->level = len | MSGPACK_CONTAINER_BIT;
 }
 else {



  if (parser->stack) {
   return parser->stack;
  }
  else {
   ucl_create_err (&parser->err, "bad top level object for msgpack");
   return ((void*)0);
  }
 }

 return parser->stack;
}
