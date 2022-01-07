
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ucl_object_t ;
struct ucl_parser {int * cur_obj; int * top_obj; int err; TYPE_2__* stack; TYPE_1__* chunks; } ;
struct TYPE_4__ {int * obj; } ;
struct TYPE_3__ {unsigned char* begin; scalar_t__ remain; } ;


 int assert (int) ;
 int ucl_create_err (int *,char*) ;
 int ucl_msgpack_consume (struct ucl_parser*) ;

bool
ucl_parse_msgpack (struct ucl_parser *parser)
{
 ucl_object_t *container = ((void*)0);
 const unsigned char *p;
 bool ret;

 assert (parser != ((void*)0));
 assert (parser->chunks != ((void*)0));
 assert (parser->chunks->begin != ((void*)0));
 assert (parser->chunks->remain != 0);

 p = parser->chunks->begin;

 if (parser->stack) {
  container = parser->stack->obj;
 }






 if (container == ((void*)0)) {
  if ((*p & 0x80) != 0x80 && !(*p >= 0xdc && *p <= 0xdf)) {
   ucl_create_err (&parser->err, "bad top level object for msgpack");
   return 0;
  }
 }

 ret = ucl_msgpack_consume (parser);

 if (ret && parser->top_obj == ((void*)0)) {
  parser->top_obj = parser->cur_obj;
 }

 return ret;
}
