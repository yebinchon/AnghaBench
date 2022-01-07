
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;


 int gdb_value_equal (struct value*,struct value*,int*) ;

__attribute__((used)) static int
my_value_equal (struct value *val1, struct value *val2, int *error2)
{
  int r, err1, err2;

  *error2 = 0;


  if (val1 == ((void*)0) && val2 == ((void*)0))
    return 1;
  else if (val1 == ((void*)0) || val2 == ((void*)0))
    return 0;




  err1 = 0;
  err2 = 0;


  if (!gdb_value_equal (val1, val1, &r))
    err1 = 1;

  if (!gdb_value_equal (val2, val2, &r))
    *error2 = err2 = 1;

  if (err1 != err2)
    return 0;

  if (!gdb_value_equal (val1, val2, &r))
    {





      if (err1 == err2)
 {




   return 1;
 }
      else
 {
   return 0;
 }
    }

  return r;
}
