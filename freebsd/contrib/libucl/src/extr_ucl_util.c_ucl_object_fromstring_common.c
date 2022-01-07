
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* sv; } ;
struct TYPE_8__ {char** trash_stack; size_t len; TYPE_1__ value; int type; } ;
typedef TYPE_2__ ucl_object_t ;
typedef enum ucl_string_flags { ____Placeholder_ucl_string_flags } ucl_string_flags ;


 int UCL_CHARACTER_JSON_UNSAFE ;
 int UCL_CHARACTER_WHITESPACE_UNSAFE ;
 int UCL_STRING ;
 int UCL_STRING_ESCAPE ;
 int UCL_STRING_PARSE ;
 int UCL_STRING_PARSE_BOOLEAN ;
 int UCL_STRING_PARSE_BYTES ;
 int UCL_STRING_PARSE_DOUBLE ;
 int UCL_STRING_PARSE_NUMBER ;
 int UCL_STRING_PARSE_TIME ;
 int UCL_STRING_TRIM ;
 size_t UCL_TRASH_VALUE ;
 char* malloc (int) ;
 size_t strlen (char const*) ;
 int ucl_maybe_parse_boolean (TYPE_2__*,char*,int) ;
 int ucl_maybe_parse_number (TYPE_2__*,char*,char*,char const**,int,int,int) ;
 TYPE_2__* ucl_object_new () ;
 int ucl_strlcpy_unsafe (char*,char const*,int) ;
 scalar_t__ ucl_test_character (char const,int ) ;

ucl_object_t *
ucl_object_fromstring_common (const char *str, size_t len, enum ucl_string_flags flags)
{
 ucl_object_t *obj;
 const char *start, *end, *p, *pos;
 char *dst, *d;
 size_t escaped_len;

 if (str == ((void*)0)) {
  return ((void*)0);
 }

 obj = ucl_object_new ();
 if (obj) {
  if (len == 0) {
   len = strlen (str);
  }
  if (flags & UCL_STRING_TRIM) {

   for (start = str; (size_t)(start - str) < len; start ++) {
    if (!ucl_test_character (*start, UCL_CHARACTER_WHITESPACE_UNSAFE)) {
     break;
    }
   }

   for (end = str + len - 1; end > start; end --) {
    if (!ucl_test_character (*end, UCL_CHARACTER_WHITESPACE_UNSAFE)) {
     break;
    }
   }
   end ++;
  }
  else {
   start = str;
   end = str + len;
  }

  obj->type = UCL_STRING;
  if (flags & UCL_STRING_ESCAPE) {
   for (p = start, escaped_len = 0; p < end; p ++, escaped_len ++) {
    if (ucl_test_character (*p, UCL_CHARACTER_JSON_UNSAFE)) {
     escaped_len ++;
    }
   }
   dst = malloc (escaped_len + 1);
   if (dst != ((void*)0)) {
    for (p = start, d = dst; p < end; p ++, d ++) {
     if (ucl_test_character (*p, UCL_CHARACTER_JSON_UNSAFE)) {
      switch (*p) {
      case '\n':
       *d++ = '\\';
       *d = 'n';
       break;
      case '\r':
       *d++ = '\\';
       *d = 'r';
       break;
      case '\b':
       *d++ = '\\';
       *d = 'b';
       break;
      case '\t':
       *d++ = '\\';
       *d = 't';
       break;
      case '\f':
       *d++ = '\\';
       *d = 'f';
       break;
      case '\\':
       *d++ = '\\';
       *d = '\\';
       break;
      case '"':
       *d++ = '\\';
       *d = '"';
       break;
      }
     }
     else {
      *d = *p;
     }
    }
    *d = '\0';
    obj->value.sv = dst;
    obj->trash_stack[UCL_TRASH_VALUE] = dst;
    obj->len = escaped_len;
   }
  }
  else {
   dst = malloc (end - start + 1);
   if (dst != ((void*)0)) {
    ucl_strlcpy_unsafe (dst, start, end - start + 1);
    obj->value.sv = dst;
    obj->trash_stack[UCL_TRASH_VALUE] = dst;
    obj->len = end - start;
   }
  }
  if ((flags & UCL_STRING_PARSE) && dst != ((void*)0)) {

   if (flags & UCL_STRING_PARSE_BOOLEAN) {
    if (!ucl_maybe_parse_boolean (obj, dst, obj->len) && (flags & UCL_STRING_PARSE_NUMBER)) {
     ucl_maybe_parse_number (obj, dst, dst + obj->len, &pos,
       flags & UCL_STRING_PARSE_DOUBLE,
       flags & UCL_STRING_PARSE_BYTES,
       flags & UCL_STRING_PARSE_TIME);
    }
   }
   else {
    ucl_maybe_parse_number (obj, dst, dst + obj->len, &pos,
      flags & UCL_STRING_PARSE_DOUBLE,
      flags & UCL_STRING_PARSE_BYTES,
      flags & UCL_STRING_PARSE_TIME);
   }
  }
 }

 return obj;
}
