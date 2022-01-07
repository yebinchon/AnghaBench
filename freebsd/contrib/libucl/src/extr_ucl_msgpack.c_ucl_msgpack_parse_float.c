
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uiv64 ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_6__ {float dv; int iv; } ;
struct TYPE_7__ {TYPE_2__ value; } ;
typedef TYPE_3__ ucl_object_t ;
struct ucl_stack {int dummy; } ;
struct ucl_parser {TYPE_3__* cur_obj; TYPE_1__* chunks; } ;
typedef int ssize_t ;
typedef enum ucl_msgpack_format { ____Placeholder_ucl_msgpack_format } ucl_msgpack_format ;
struct TYPE_5__ {int priority; } ;


 int FROM_BE32 (int ) ;
 int FROM_BE64 (int ) ;
 int UCL_FLOAT ;
 int assert (int ) ;
 int memcpy (int *,unsigned char const*,int) ;


 TYPE_3__* ucl_object_new_full (int ,int ) ;

__attribute__((used)) static ssize_t
ucl_msgpack_parse_float (struct ucl_parser *parser,
  struct ucl_stack *container, size_t len, enum ucl_msgpack_format fmt,
  const unsigned char *pos, size_t remain)
{
 ucl_object_t *obj;
 union {
  uint32_t i;
  float f;
 } d;
 uint64_t uiv64;

 if (len > remain) {
  return -1;
 }

 obj = ucl_object_new_full (UCL_FLOAT, parser->chunks->priority);

 switch (fmt) {
 case 129:
  memcpy(&d.i, pos, sizeof(d.i));
  d.i = FROM_BE32(d.i);

  obj->value.dv = d.f;
  len = 4;
  break;
 case 128:
  memcpy(&uiv64, pos, sizeof(uiv64));
  uiv64 = FROM_BE64(uiv64);
  obj->value.iv = uiv64;
  len = 8;
  break;
 default:
  assert (0);
  break;
 }

 parser->cur_obj = obj;

 return len;
}
