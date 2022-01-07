
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value {int dummy; } ;
struct type {int dummy; } ;
struct TYPE_2__ {int string_lower_bound; scalar_t__ c_style_arrays; } ;
typedef int CORE_ADDR ;


 int VALUE_CONTENTS_RAW (struct value*) ;
 int allocate_space_in_inferior (int) ;
 struct value* allocate_value (struct type*) ;
 int builtin_type_int ;
 struct type* create_range_type (struct type*,int ,int,int) ;
 struct type* create_string_type (struct type*,struct type*) ;
 TYPE_1__* current_language ;
 int memcpy (int ,char*,int) ;
 struct value* value_at_lazy (struct type*,int ,int *) ;
 int write_memory (int ,char*,int) ;

struct value *
value_string (char *ptr, int len)
{
  struct value *val;
  int lowbound = current_language->string_lower_bound;
  struct type *rangetype = create_range_type ((struct type *) ((void*)0),
           builtin_type_int,
           lowbound, len + lowbound - 1);
  struct type *stringtype
  = create_string_type ((struct type *) ((void*)0), rangetype);
  CORE_ADDR addr;

  if (current_language->c_style_arrays == 0)
    {
      val = allocate_value (stringtype);
      memcpy (VALUE_CONTENTS_RAW (val), ptr, len);
      return val;
    }





  addr = allocate_space_in_inferior (len);
  write_memory (addr, ptr, len);

  val = value_at_lazy (stringtype, addr, ((void*)0));
  return (val);
}
