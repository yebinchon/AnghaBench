
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_stack {int obj; } ;
struct ucl_parser {int cur_obj; } ;
typedef int ssize_t ;
typedef enum ucl_msgpack_format { ____Placeholder_ucl_msgpack_format } ucl_msgpack_format ;



__attribute__((used)) static ssize_t
ucl_msgpack_parse_array (struct ucl_parser *parser,
  struct ucl_stack *container, size_t len, enum ucl_msgpack_format fmt,
  const unsigned char *pos, size_t remain)
{
 container->obj = parser->cur_obj;

 return 0;
}
