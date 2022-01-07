
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct internalvar {struct value* value; } ;


 int TYPE_LENGTH (int ) ;
 char* VALUE_CONTENTS (struct value*) ;
 int VALUE_TYPE (struct value*) ;
 int memcpy (char*,char*,int ) ;
 int modify_field (char*,int ,int,int) ;
 int value_as_long (struct value*) ;

void
set_internalvar_component (struct internalvar *var, int offset, int bitpos,
      int bitsize, struct value *newval)
{
  char *addr = VALUE_CONTENTS (var->value) + offset;

  if (bitsize)
    modify_field (addr, value_as_long (newval),
    bitpos, bitsize);
  else
    memcpy (addr, VALUE_CONTENTS (newval), TYPE_LENGTH (VALUE_TYPE (newval)));
}
