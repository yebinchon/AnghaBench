
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct ucl_stack {int level; TYPE_1__* obj; struct ucl_stack* next; } ;
struct ucl_parser {TYPE_1__* cur_obj; struct ucl_stack* stack; } ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ len; } ;


 int MSGPACK_CONTAINER_BIT ;
 scalar_t__ UCL_OBJECT ;
 int assert (int ) ;
 int fprintf (int ,char*,...) ;
 int free (struct ucl_stack*) ;
 int stderr ;

__attribute__((used)) static struct ucl_stack *
ucl_msgpack_get_next_container (struct ucl_parser *parser)
{
 struct ucl_stack *cur = ((void*)0);
 uint64_t level;

 cur = parser->stack;

 if (cur == ((void*)0)) {
  return ((void*)0);
 }

 if (cur->level & MSGPACK_CONTAINER_BIT) {
  level = cur->level & ~MSGPACK_CONTAINER_BIT;

  if (level == 0) {

   parser->stack = cur->next;
   parser->cur_obj = cur->obj;
   free (cur);
   return ucl_msgpack_get_next_container (parser);
  }
 }






 assert (cur->obj != ((void*)0));

 return cur;
}
