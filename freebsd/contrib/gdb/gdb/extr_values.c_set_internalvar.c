
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int modifiable; } ;
struct internalvar {struct value* value; } ;


 scalar_t__ VALUE_LAZY (struct value*) ;
 int release_value (struct value*) ;
 struct value* value_copy (struct value*) ;
 int value_fetch_lazy (struct value*) ;
 int xfree (struct value*) ;

void
set_internalvar (struct internalvar *var, struct value *val)
{
  struct value *newval;

  newval = value_copy (val);
  newval->modifiable = 1;




  if (VALUE_LAZY (newval))
    value_fetch_lazy (newval);







  xfree (var->value);
  var->value = newval;
  release_value (newval);

}
