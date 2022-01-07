
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
typedef int DOUBLEST ;


 int VALUE_CONTENTS (struct value*) ;
 int VALUE_TYPE (struct value*) ;
 int error (char*) ;
 int unpack_double (int ,int ,int*) ;

DOUBLEST
value_as_double (struct value *val)
{
  DOUBLEST foo;
  int inv;

  foo = unpack_double (VALUE_TYPE (val), VALUE_CONTENTS (val), &inv);
  if (inv)
    error ("Invalid floating value found in program.");
  return foo;
}
