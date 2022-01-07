
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_7__ {unsigned char const* key; size_t keylen; } ;
typedef TYPE_1__ ucl_object_t ;
struct ucl_stack {int level; TYPE_5__* obj; } ;
struct ucl_parser {int flags; int err; struct ucl_stack* stack; } ;
struct TYPE_8__ {scalar_t__ type; } ;


 int MSGPACK_CONTAINER_BIT ;
 scalar_t__ UCL_ARRAY ;
 scalar_t__ UCL_OBJECT ;
 int UCL_PARSER_ZEROCOPY ;
 int assert (int) ;
 int ucl_array_append (TYPE_5__*,TYPE_1__*) ;
 int ucl_copy_key_trash (TYPE_1__*) ;
 int ucl_create_err (int *,char*) ;
 int ucl_parser_process_object_element (struct ucl_parser*,TYPE_1__*) ;

__attribute__((used)) static bool
ucl_msgpack_insert_object (struct ucl_parser *parser,
  const unsigned char *key,
  size_t keylen, ucl_object_t *obj)
{
 uint64_t level;
 struct ucl_stack *container;

 container = parser->stack;
 assert (container != ((void*)0));
 assert (container->level > 0);
 assert (obj != ((void*)0));
 assert (container->obj != ((void*)0));

 if (container->obj->type == UCL_ARRAY) {
  ucl_array_append (container->obj, obj);
 }
 else if (container->obj->type == UCL_OBJECT) {
  if (key == ((void*)0) || keylen == 0) {
   ucl_create_err (&parser->err, "cannot insert object with no key");
   return 0;
  }

  obj->key = key;
  obj->keylen = keylen;

  if (!(parser->flags & UCL_PARSER_ZEROCOPY)) {
   ucl_copy_key_trash (obj);
  }

  ucl_parser_process_object_element (parser, obj);
 }
 else {
  ucl_create_err (&parser->err, "bad container type");
  return 0;
 }

 if (container->level & MSGPACK_CONTAINER_BIT) {
  level = container->level & ~MSGPACK_CONTAINER_BIT;
  container->level = (level - 1) | MSGPACK_CONTAINER_BIT;
 }

 return 1;
}
