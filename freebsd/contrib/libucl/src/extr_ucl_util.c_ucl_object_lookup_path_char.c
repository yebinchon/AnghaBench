
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int type; } ;
typedef TYPE_1__ ucl_object_t ;



 unsigned int strtoul (char const*,char**,int) ;
 TYPE_1__* ucl_array_find_index (TYPE_1__ const*,unsigned int) ;
 TYPE_1__* ucl_object_lookup_len (TYPE_1__ const*,char const*,int) ;

const ucl_object_t *
ucl_object_lookup_path_char (const ucl_object_t *top, const char *path_in, const char sep) {
 const ucl_object_t *o = ((void*)0), *found;
 const char *p, *c;
 char *err_str;
 unsigned index;

 if (path_in == ((void*)0) || top == ((void*)0)) {
  return ((void*)0);
 }

 found = ((void*)0);
 p = path_in;


 while (*p == sep) {
  p ++;
 }

 c = p;
 while (*p != '\0') {
  p ++;
  if (*p == sep || *p == '\0') {
   if (p > c) {
    switch (top->type) {
    case 128:

     index = strtoul (c, &err_str, 10);
     if (err_str != ((void*)0) && (*err_str != sep && *err_str != '\0')) {
      return ((void*)0);
     }
     o = ucl_array_find_index (top, index);
     break;
    default:
     o = ucl_object_lookup_len (top, c, p - c);
     break;
    }
    if (o == ((void*)0)) {
     return ((void*)0);
    }
    top = o;
   }
   if (*p != '\0') {
    c = p + 1;
   }
  }
 }
 found = o;

 return found;
}
