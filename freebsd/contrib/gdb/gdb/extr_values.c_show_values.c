
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;


 int Val_pretty_default ;
 struct value* access_value_history (int) ;
 int gdb_stdout ;
 int parse_and_eval_long (char*) ;
 int printf_filtered (char*,...) ;
 int value_history_count ;
 int value_print (struct value*,int ,int ,int ) ;

__attribute__((used)) static void
show_values (char *num_exp, int from_tty)
{
  int i;
  struct value *val;
  static int num = 1;

  if (num_exp)
    {


      if (num_exp[0] != '+' || num_exp[1] != '\0')
 num = parse_and_eval_long (num_exp) - 5;
    }
  else
    {

      num = value_history_count - 9;
    }

  if (num <= 0)
    num = 1;

  for (i = num; i < num + 10 && i <= value_history_count; i++)
    {
      val = access_value_history (i);
      printf_filtered ("$%d = ", i);
      value_print (val, gdb_stdout, 0, Val_pretty_default);
      printf_filtered ("\n");
    }


  num += 10;




  if (from_tty && num_exp)
    {
      num_exp[0] = '+';
      num_exp[1] = '\0';
    }
}
