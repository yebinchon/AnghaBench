
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
struct regcache {int dummy; } ;


 int CHECK_TYPEDEF (struct type*) ;
 int EXTRACT_RETURN_VALUE (struct type*,struct regcache*,int *) ;
 int RETURN_VALUE_REGISTER_CONVENTION ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_VOID ;
 int * VALUE_CONTENTS_RAW (struct value*) ;
 struct value* allocate_value (struct type*) ;
 int current_gdbarch ;
 int gdb_assert (int) ;
 int gdbarch_return_value (int ,struct type*,struct regcache*,int *,int *) ;
 int gdbarch_return_value_p (int ) ;

struct value *
register_value_being_returned (struct type *valtype, struct regcache *retbuf)
{
  struct value *val = allocate_value (valtype);



  if (TYPE_CODE (valtype) == TYPE_CODE_VOID)
    return val;

  if (!gdbarch_return_value_p (current_gdbarch))
    {




      CHECK_TYPEDEF (valtype);
      EXTRACT_RETURN_VALUE (valtype, retbuf, VALUE_CONTENTS_RAW (val));
      return val;
    }


  gdb_assert (gdbarch_return_value (current_gdbarch, valtype,
        ((void*)0), ((void*)0), ((void*)0))
       == RETURN_VALUE_REGISTER_CONVENTION);
  gdbarch_return_value (current_gdbarch, valtype, retbuf,
   VALUE_CONTENTS_RAW (val) , ((void*)0) );
  return val;
}
