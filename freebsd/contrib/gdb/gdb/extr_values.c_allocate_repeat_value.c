
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value {int dummy; } ;
struct type {int dummy; } ;
struct TYPE_2__ {int string_lower_bound; } ;


 struct value* allocate_value (int ) ;
 int builtin_type_int ;
 int create_array_type (struct type*,struct type*,struct type*) ;
 struct type* create_range_type (struct type*,int ,int,int) ;
 TYPE_1__* current_language ;

struct value *
allocate_repeat_value (struct type *type, int count)
{
  int low_bound = current_language->string_lower_bound;


  struct type *range_type
  = create_range_type ((struct type *) ((void*)0), builtin_type_int,
         low_bound, count + low_bound - 1);


  return allocate_value (create_array_type ((struct type *) ((void*)0),
         type, range_type));
}
