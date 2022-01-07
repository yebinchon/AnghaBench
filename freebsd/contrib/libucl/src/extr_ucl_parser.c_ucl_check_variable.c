
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_parser {int dummy; } ;


 char* ucl_check_variable_safe (struct ucl_parser*,char const*,size_t,size_t*,int,int*) ;

__attribute__((used)) static const char *
ucl_check_variable (struct ucl_parser *parser, const char *ptr,
  size_t remain, size_t *out_len, bool *vars_found)
{
 const char *p, *end, *ret = ptr;
 bool found = 0;

 if (*ptr == '{') {

  p = ptr + 1;
  end = ptr + remain;
  while (p < end) {
   if (*p == '}') {
    ret = ucl_check_variable_safe (parser, ptr + 1, p - ptr - 1,
      out_len, 1, &found);
    if (found) {

     ret ++;
     if (!*vars_found) {
      *vars_found = 1;
     }
    }
    else {
     *out_len += 2;
    }
    break;
   }
   p ++;
  }
 }
 else if (*ptr != '$') {

  ret = ucl_check_variable_safe (parser, ptr, remain, out_len, 0, &found);
  if (found && !*vars_found) {
   *vars_found = 1;
  }
  if (!found) {
   (*out_len) ++;
  }
 }
 else {
  ret ++;
  (*out_len) ++;
 }

 return ret;
}
