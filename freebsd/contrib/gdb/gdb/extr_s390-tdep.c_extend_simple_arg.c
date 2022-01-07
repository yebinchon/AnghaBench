
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
typedef int LONGEST ;


 int TYPE_LENGTH (struct type*) ;
 scalar_t__ TYPE_UNSIGNED (struct type*) ;
 int VALUE_CONTENTS (struct value*) ;
 struct type* VALUE_TYPE (struct value*) ;
 int extract_signed_integer (int ,int ) ;
 int extract_unsigned_integer (int ,int ) ;

__attribute__((used)) static LONGEST
extend_simple_arg (struct value *arg)
{
  struct type *type = VALUE_TYPE (arg);




  if (TYPE_UNSIGNED (type))
    return extract_unsigned_integer (VALUE_CONTENTS (arg),
                                     TYPE_LENGTH (type));
  else
    return extract_signed_integer (VALUE_CONTENTS (arg),
                                   TYPE_LENGTH (type));
}
