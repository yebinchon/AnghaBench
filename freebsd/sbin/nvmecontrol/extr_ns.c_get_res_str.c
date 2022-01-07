
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ns_result_str {int res; char const* str; } ;


 struct ns_result_str* ns_result ;

__attribute__((used)) static const char *
get_res_str(uint16_t res)
{
 struct ns_result_str *t = ns_result;

 while (t->res != 0xFFFF) {
  if (t->res == res)
   return (t->str);
  t++;
 }
 return t->str;
}
