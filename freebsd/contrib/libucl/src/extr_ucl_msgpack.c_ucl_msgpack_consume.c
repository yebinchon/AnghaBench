
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct ucl_stack {int level; } ;
struct ucl_parser {struct ucl_stack* stack; int err; void* cur_obj; TYPE_1__* chunks; } ;
struct ucl_msgpack_parser {int flags; int len; unsigned char const prefix; int (* func ) (struct ucl_parser*,struct ucl_stack*,int,int ,unsigned char const*,int) ;int fmt; } ;
typedef int ssize_t ;
typedef enum e_msgpack_parser_state { ____Placeholder_e_msgpack_parser_state } e_msgpack_parser_state ;
struct TYPE_2__ {unsigned char* begin; int remain; int priority; } ;


 int CONSUME_RET ;
 int FROM_BE16 (int ) ;
 int FROM_BE32 (int ) ;
 int FROM_BE64 (int) ;
 int GET_NEXT_STATE ;
 int MSGPACK_CONTAINER_BIT ;
 int MSGPACK_FLAG_ASSOC ;
 int MSGPACK_FLAG_CONTAINER ;
 int MSGPACK_FLAG_FIXED ;
 int MSGPACK_FLAG_KEY ;
 int MSGPACK_FLAG_TYPEVALUE ;
 int UCL_ARRAY ;
 int UCL_OBJECT ;
 int assert (int) ;
 int stub1 (struct ucl_parser*,struct ucl_stack*,int,int ,unsigned char const*,int) ;
 int stub2 (struct ucl_parser*,struct ucl_stack*,int,int ,unsigned char const*,int) ;
 int stub3 (struct ucl_parser*,struct ucl_stack*,int,int ,unsigned char const*,int) ;
 int stub4 (struct ucl_parser*,struct ucl_stack*,int,int ,unsigned char const*,int) ;
 int stub5 (struct ucl_parser*,struct ucl_stack*,int,int ,unsigned char const*,int) ;
 int stub6 (struct ucl_parser*,struct ucl_stack*,int,int ,unsigned char const*,int) ;
 int ucl_create_err (int *,char*,...) ;
 struct ucl_stack* ucl_msgpack_get_container (struct ucl_parser*,struct ucl_msgpack_parser*,int) ;
 int ucl_msgpack_get_next_container (struct ucl_parser*) ;
 struct ucl_msgpack_parser* ucl_msgpack_get_parser_from_type (unsigned char const) ;
 int ucl_msgpack_insert_object (struct ucl_parser*,unsigned char const*,int,void*) ;
 int ucl_msgpack_is_container_finished (struct ucl_stack*) ;
 void* ucl_object_new_full (int ,int ) ;

__attribute__((used)) static bool
ucl_msgpack_consume (struct ucl_parser *parser)
{
 const unsigned char *p, *end, *key = ((void*)0);
 struct ucl_stack *container;
 enum e_msgpack_parser_state {
  read_type,
  start_assoc,
  start_array,
  read_assoc_key,
  read_assoc_value,
  finish_assoc_value,
  read_array_value,
  finish_array_value,
  error_state
 } state = read_type, next_state = error_state;
 struct ucl_msgpack_parser *obj_parser = ((void*)0);
 uint64_t len = 0;
 ssize_t ret, remain, keylen = 0;





 p = parser->chunks->begin;
 remain = parser->chunks->remain;
 end = p + remain;


 while (p < end) {



  switch (state) {
  case read_type:
   obj_parser = ucl_msgpack_get_parser_from_type (*p);

   if (obj_parser == ((void*)0)) {
    ucl_create_err (&parser->err, "unknown msgpack format: %x",
      (unsigned int)*p);

    return 0;
   }

   if (obj_parser->flags & MSGPACK_FLAG_FIXED) {
    if (obj_parser->len == 0) {

     len = *p & ~obj_parser->prefix;
    }
    else {
     if (remain < obj_parser->len) {
      ucl_create_err (&parser->err, "not enough data remain to "
        "read object's length: %u remain, %u needed",
        (unsigned)remain, obj_parser->len);

      return 0;
     }

     len = obj_parser->len;
    }

    if (!(obj_parser->flags & MSGPACK_FLAG_TYPEVALUE)) {

     if (remain > 0) {
      p ++;
      remain --;
     }
    }
    else {

     len = 0;
    }
   }
   else {

    if (remain < obj_parser->len) {
     ucl_create_err (&parser->err, "not enough data remain to "
       "read object's length: %u remain, %u needed",
       (unsigned)remain, obj_parser->len);

     return 0;
    }

    p ++;
    remain --;

    switch (obj_parser->len) {
    case 1:
     len = *p;
     break;
    case 2:
     len = FROM_BE16 (*(uint16_t *)p);
     break;
    case 4:
     len = FROM_BE32 (*(uint32_t *)p);
     break;
    case 8:
     len = FROM_BE64 (*(uint64_t *)p);
     break;
    default:
     assert (0);
     break;
    }

    p += obj_parser->len;
    remain -= obj_parser->len;
   }

   if (obj_parser->flags & MSGPACK_FLAG_ASSOC) {

    state = start_assoc;
   }
   else if (obj_parser->flags & MSGPACK_FLAG_CONTAINER){
    state = start_array;
   }
   else {
    state = next_state;
   }

   break;
  case start_assoc:
   parser->cur_obj = ucl_object_new_full (UCL_OBJECT,
     parser->chunks->priority);

   if (parser->stack && !ucl_msgpack_insert_object (parser,
     key, keylen, parser->cur_obj)) {
    return 0;
   }

   container = ucl_msgpack_get_container (parser, obj_parser, len);

   if (container == ((void*)0)) {
    return 0;
   }

   ret = obj_parser->func (parser, container, len, obj_parser->fmt,
     p, remain);
   CONSUME_RET;
   key = ((void*)0);
   keylen = 0;

   if (len > 0) {
    state = read_type;
    next_state = read_assoc_key;
   }
   else {

    state = finish_assoc_value;
   }
   break;

  case start_array:
   parser->cur_obj = ucl_object_new_full (UCL_ARRAY,
     parser->chunks->priority);

   if (parser->stack && !ucl_msgpack_insert_object (parser,
     key, keylen, parser->cur_obj)) {
    return 0;
   }

   container = ucl_msgpack_get_container (parser, obj_parser, len);

   if (container == ((void*)0)) {
    return 0;
   }

   ret = obj_parser->func (parser, container, len, obj_parser->fmt,
        p, remain);
   CONSUME_RET;

   if (len > 0) {
    state = read_type;
    next_state = read_array_value;
   }
   else {

    state = finish_array_value;
   }
   break;

  case read_array_value:




   container = parser->stack;

   if (container == ((void*)0)) {
    return 0;
   }

   ret = obj_parser->func (parser, container, len, obj_parser->fmt,
     p, remain);
   CONSUME_RET;



   if (!ucl_msgpack_insert_object (parser, ((void*)0), 0,
     parser->cur_obj)) {
    return 0;
   }

   if (ucl_msgpack_is_container_finished (container)) {
    state = finish_array_value;
   }
   else {

    state = read_type;
    next_state = read_array_value;
   }

   break;

  case read_assoc_key:



   if (!(obj_parser->flags & MSGPACK_FLAG_KEY)) {
    ucl_create_err (&parser->err, "bad type for key: %u, expected "
      "string", (unsigned)obj_parser->fmt);

    return 0;
   }

   key = p;
   keylen = len;

   if (keylen > remain || keylen == 0) {
    ucl_create_err (&parser->err, "too long or empty key");
    return 0;
   }

   p += len;
   remain -= len;

   state = read_type;
   next_state = read_assoc_value;
   break;

  case read_assoc_value:




   container = parser->stack;

   if (container == ((void*)0)) {
    return 0;
   }

   ret = obj_parser->func (parser, container, len, obj_parser->fmt,
     p, remain);
   CONSUME_RET;

   assert (key != ((void*)0) && keylen > 0);

   if (!ucl_msgpack_insert_object (parser, key, keylen,
     parser->cur_obj)) {
    return 0;
   }

   key = ((void*)0);
   keylen = 0;

   if (ucl_msgpack_is_container_finished (container)) {
    state = finish_assoc_value;
   }
   else {

    state = read_type;
    next_state = read_assoc_key;
   }
   break;

  case finish_array_value:
  case finish_assoc_value:
   GET_NEXT_STATE;
   state = read_type;
   break;

  case error_state:
   ucl_create_err (&parser->err, "invalid state machine state");

   return 0;
  }
 }


 switch (state) {
 case start_array:
 case start_assoc:

  if (len != 0) {
   ucl_create_err (&parser->err, "invalid non-empty container at the end");

   return 0;
  }

  parser->cur_obj = ucl_object_new_full (
    state == start_array ? UCL_ARRAY : UCL_OBJECT,
    parser->chunks->priority);

  if (!ucl_msgpack_insert_object (parser,
    key, keylen, parser->cur_obj)) {
   return 0;
  }

  container = ucl_msgpack_get_container (parser, obj_parser, len);

  if (container == ((void*)0)) {
   return 0;
  }

  ret = obj_parser->func (parser, container, len, obj_parser->fmt,
    p, remain);
  break;

 case read_array_value:
 case read_assoc_value:
  if (len != 0) {
   ucl_create_err (&parser->err, "unfinished value at the end");

   return 0;
  }

  container = parser->stack;

  if (container == ((void*)0)) {
   return 0;
  }

  ret = obj_parser->func (parser, container, len, obj_parser->fmt,
    p, remain);
  CONSUME_RET;



  if (!ucl_msgpack_insert_object (parser, ((void*)0), 0,
    parser->cur_obj)) {
   return 0;
  }
  break;
 case finish_array_value:
 case finish_assoc_value:
 case read_type:

  break;
 default:

  ucl_create_err (&parser->err, "invalid state machine finishing state: %d",
    state);

  return 0;
 }


 ucl_msgpack_get_next_container (parser);
 assert (parser->stack == ((void*)0) ||
   (parser->stack->level & MSGPACK_CONTAINER_BIT) == 0);

 return 1;
}
