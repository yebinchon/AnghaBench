
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_var {int flags; char* text; } ;


 int EOV ;
 struct ctl_var* ext_sys_var ;
 int memcmp (char const*,char*,size_t) ;
 size_t strlen (char const*) ;

const char *
get_ext_sys_var(const char *tag)
{
 struct ctl_var * v;
 size_t c;
 const char * val;

 val = ((void*)0);
 c = strlen(tag);
 for (v = ext_sys_var; !(EOV & v->flags); v++) {
  if (((void*)0) != v->text && !memcmp(tag, v->text, c)) {
   if ('=' == v->text[c]) {
    val = v->text + c + 1;
    break;
   } else if ('\0' == v->text[c]) {
    val = "";
    break;
   }
  }
 }

 return val;
}
