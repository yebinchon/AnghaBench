
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_stack {int dummy; } ;
struct ucl_parser {int err; } ;
typedef int ssize_t ;
typedef enum ucl_msgpack_format { ____Placeholder_ucl_msgpack_format } ucl_msgpack_format ;
 int ucl_create_err (int *,char*,unsigned int) ;

__attribute__((used)) static ssize_t
ucl_msgpack_parse_ignore (struct ucl_parser *parser,
  struct ucl_stack *container, size_t len, enum ucl_msgpack_format fmt,
  const unsigned char *pos, size_t remain)
{
 if (len > remain) {
  return -1;
 }

 switch (fmt) {
 case 132:
  len = 2;
  break;
 case 130:
  len = 3;
  break;
 case 129:
  len = 5;
  break;
 case 128:
  len = 9;
  break;
 case 131:
  len = 17;
  break;
 case 133:
 case 135:
 case 134:
  len = len + 1;
  break;
 default:
  ucl_create_err (&parser->err, "bad type: %x", (unsigned)fmt);
  return -1;
 }

 return len;
}
