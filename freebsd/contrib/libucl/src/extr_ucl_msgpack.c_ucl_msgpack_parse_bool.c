
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int iv; } ;
struct TYPE_7__ {TYPE_2__ value; } ;
typedef TYPE_3__ ucl_object_t ;
struct ucl_stack {int dummy; } ;
struct ucl_parser {TYPE_3__* cur_obj; TYPE_1__* chunks; } ;
typedef int ssize_t ;
typedef enum ucl_msgpack_format { ____Placeholder_ucl_msgpack_format } ucl_msgpack_format ;
struct TYPE_5__ {int priority; } ;


 int UCL_BOOLEAN ;
 int assert (int ) ;


 TYPE_3__* ucl_object_new_full (int ,int ) ;

__attribute__((used)) static ssize_t
ucl_msgpack_parse_bool (struct ucl_parser *parser,
  struct ucl_stack *container, size_t len, enum ucl_msgpack_format fmt,
  const unsigned char *pos, size_t remain)
{
 ucl_object_t *obj;

 if (len > remain) {
  return -1;
 }

 obj = ucl_object_new_full (UCL_BOOLEAN, parser->chunks->priority);

 switch (fmt) {
 case 128:
  obj->value.iv = 1;
  break;
 case 129:
  obj->value.iv = 0;
  break;
 default:
  assert (0);
  break;
 }

 parser->cur_obj = obj;

 return 1;
}
