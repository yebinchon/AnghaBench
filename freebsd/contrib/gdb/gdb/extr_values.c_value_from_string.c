
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value {int dummy; } ;
struct type {int dummy; } ;
struct TYPE_2__ {int string_lower_bound; int * string_char_type; } ;


 int VALUE_CONTENTS_RAW (struct value*) ;
 struct value* allocate_value (struct type*) ;
 int builtin_type_int ;
 struct type* create_array_type (struct type*,int ,struct type*) ;
 struct type* create_range_type (struct type*,int ,int,int) ;
 TYPE_1__* current_language ;
 int memcpy (int ,char*,int) ;
 int strlen (char*) ;

struct value *
value_from_string (char *ptr)
{
  struct value *val;
  int len = strlen (ptr);
  int lowbound = current_language->string_lower_bound;
  struct type *rangetype =
  create_range_type ((struct type *) ((void*)0),
       builtin_type_int,
       lowbound, len + lowbound - 1);
  struct type *stringtype =
  create_array_type ((struct type *) ((void*)0),
       *current_language->string_char_type,
       rangetype);

  val = allocate_value (stringtype);
  memcpy (VALUE_CONTENTS_RAW (val), ptr, len);
  return val;
}
