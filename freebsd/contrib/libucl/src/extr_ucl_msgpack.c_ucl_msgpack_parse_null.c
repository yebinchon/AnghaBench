
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ucl_object_t ;
struct ucl_stack {int dummy; } ;
struct ucl_parser {int * cur_obj; TYPE_1__* chunks; } ;
typedef int ssize_t ;
typedef enum ucl_msgpack_format { ____Placeholder_ucl_msgpack_format } ucl_msgpack_format ;
struct TYPE_2__ {int priority; } ;


 int UCL_NULL ;
 int * ucl_object_new_full (int ,int ) ;

__attribute__((used)) static ssize_t
ucl_msgpack_parse_null (struct ucl_parser *parser,
  struct ucl_stack *container, size_t len, enum ucl_msgpack_format fmt,
  const unsigned char *pos, size_t remain)
{
 ucl_object_t *obj;

 if (len > remain) {
  return -1;
 }

 obj = ucl_object_new_full (UCL_NULL, parser->chunks->priority);
 parser->cur_obj = obj;

 return 1;
}
