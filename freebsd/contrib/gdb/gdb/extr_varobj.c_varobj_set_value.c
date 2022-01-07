
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int updated; struct value* value; int error; } ;
struct value {int dummy; } ;
struct expression {int dummy; } ;


 int gdb_evaluate_expression (struct expression*,struct value**) ;
 int gdb_parse_exp_1 (char**,int ,int ,struct expression**) ;
 int gdb_value_assign (struct value*,struct value*,struct value**) ;
 int input_radix ;
 int my_value_equal (struct value*,struct value*,int*) ;
 int release_value (struct value*) ;
 int value_free (struct value*) ;
 scalar_t__ variable_editable (struct varobj*) ;
 int xfree (struct expression*) ;

int
varobj_set_value (struct varobj *var, char *expression)
{
  struct value *val;
  int error;
  int offset = 0;




  struct expression *exp;
  struct value *value;
  int saved_input_radix = input_radix;

  if (var->value != ((void*)0) && variable_editable (var) && !var->error)
    {
      char *s = expression;
      int i;

      input_radix = 10;
      if (!gdb_parse_exp_1 (&s, 0, 0, &exp))

 return 0;
      if (!gdb_evaluate_expression (exp, &value))
 {

   xfree (exp);
   return 0;
 }

      if (!my_value_equal (var->value, value, &error))
        var->updated = 1;
      if (!gdb_value_assign (var->value, value, &val))
 return 0;
      value_free (var->value);
      release_value (val);
      var->value = val;
      input_radix = saved_input_radix;
      return 1;
    }

  return 0;
}
