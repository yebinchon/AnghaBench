
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uiv64 ;
typedef int uiv32 ;
typedef int uiv16 ;
typedef void* uint64_t ;
typedef void* uint32_t ;
typedef void* uint16_t ;
struct TYPE_6__ {unsigned char iv; } ;
struct TYPE_7__ {TYPE_2__ value; } ;
typedef TYPE_3__ ucl_object_t ;
struct ucl_stack {int dummy; } ;
struct ucl_parser {TYPE_3__* cur_obj; TYPE_1__* chunks; } ;
typedef int ssize_t ;
typedef int iv8 ;
typedef int iv64 ;
typedef int iv32 ;
typedef int iv16 ;
typedef void* int8_t ;
typedef void* int64_t ;
typedef void* int32_t ;
typedef void* int16_t ;
typedef enum ucl_msgpack_format { ____Placeholder_ucl_msgpack_format } ucl_msgpack_format ;
struct TYPE_5__ {int priority; } ;


 void* FROM_BE16 (void*) ;
 void* FROM_BE32 (void*) ;
 void* FROM_BE64 (void*) ;
 int UCL_INT ;
 int assert (int ) ;
 int memcpy (void**,unsigned char const*,int) ;
 TYPE_3__* ucl_object_new_full (int ,int ) ;

__attribute__((used)) static ssize_t
ucl_msgpack_parse_int (struct ucl_parser *parser,
  struct ucl_stack *container, size_t len, enum ucl_msgpack_format fmt,
  const unsigned char *pos, size_t remain)
{
 ucl_object_t *obj;
 int8_t iv8;
 int16_t iv16;
 int32_t iv32;
 int64_t iv64;
 uint16_t uiv16;
 uint32_t uiv32;
 uint64_t uiv64;


 if (len > remain) {
  return -1;
 }

 obj = ucl_object_new_full (UCL_INT, parser->chunks->priority);

 switch (fmt) {
 case 132:
  obj->value.iv = (*pos & 0x7f);
  len = 1;
  break;
 case 133:
  obj->value.iv = - (*pos & 0x1f);
  len = 1;
  break;
 case 128:
  obj->value.iv = (unsigned char)*pos;
  len = 1;
  break;
 case 134:
  memcpy (&iv8, pos, sizeof (iv8));
  obj->value.iv = iv8;
  len = 1;
  break;
 case 137:
  memcpy (&iv16, pos, sizeof (iv16));
  iv16 = FROM_BE16 (iv16);
  obj->value.iv = iv16;
  len = 2;
  break;
 case 131:
  memcpy (&uiv16, pos, sizeof (uiv16));
  uiv16 = FROM_BE16 (uiv16);
  obj->value.iv = uiv16;
  len = 2;
  break;
 case 136:
  memcpy (&iv32, pos, sizeof (iv32));
  iv32 = FROM_BE32 (iv32);
  obj->value.iv = iv32;
  len = 4;
  break;
 case 130:
  memcpy(&uiv32, pos, sizeof(uiv32));
  uiv32 = FROM_BE32(uiv32);
  obj->value.iv = uiv32;
  len = 4;
  break;
 case 135:
  memcpy (&iv64, pos, sizeof (iv64));
  iv64 = FROM_BE64 (iv64);
  obj->value.iv = iv64;
  len = 8;
  break;
 case 129:
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
