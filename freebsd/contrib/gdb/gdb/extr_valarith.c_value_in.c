
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;


 int LA_BOOL_TYPE ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_BOOL ;
 scalar_t__ TYPE_CODE_CHAR ;
 scalar_t__ TYPE_CODE_ENUM ;
 scalar_t__ TYPE_CODE_INT ;
 scalar_t__ TYPE_CODE_RANGE ;
 scalar_t__ TYPE_CODE_SET ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 int VALUE_CONTENTS (struct value*) ;
 int VALUE_TYPE (struct value*) ;
 struct type* check_typedef (int ) ;
 int error (char*) ;
 int value_as_long (struct value*) ;
 int value_bit_index (struct type*,int ,int ) ;
 struct value* value_from_longest (int ,int) ;

struct value *
value_in (struct value *element, struct value *set)
{
  int member;
  struct type *settype = check_typedef (VALUE_TYPE (set));
  struct type *eltype = check_typedef (VALUE_TYPE (element));
  if (TYPE_CODE (eltype) == TYPE_CODE_RANGE)
    eltype = TYPE_TARGET_TYPE (eltype);
  if (TYPE_CODE (settype) != TYPE_CODE_SET)
    error ("Second argument of 'IN' has wrong type");
  if (TYPE_CODE (eltype) != TYPE_CODE_INT
      && TYPE_CODE (eltype) != TYPE_CODE_CHAR
      && TYPE_CODE (eltype) != TYPE_CODE_ENUM
      && TYPE_CODE (eltype) != TYPE_CODE_BOOL)
    error ("First argument of 'IN' has wrong type");
  member = value_bit_index (settype, VALUE_CONTENTS (set),
       value_as_long (element));
  if (member < 0)
    error ("First argument of 'IN' not in range");
  return value_from_longest (LA_BOOL_TYPE, member);
}
