
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
struct ucl_parser {int dummy; } ;


 int ucl_include_common (unsigned char const*,size_t,int const*,struct ucl_parser*,int,int) ;

bool
ucl_try_include_handler (const unsigned char *data, size_t len,
  const ucl_object_t *args, void* ud)
{
 struct ucl_parser *parser = ud;

 return ucl_include_common (data, len, args, parser, 1, 0);
}
