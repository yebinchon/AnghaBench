
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct internalvar {int value; int name; struct internalvar* next; } ;


 int Val_pretty_default ;
 int gdb_stdout ;
 struct internalvar* internalvars ;
 int printf_filtered (char*,...) ;
 int printf_unfiltered (char*) ;
 int value_print (int ,int ,int ,int ) ;

__attribute__((used)) static void
show_convenience (char *ignore, int from_tty)
{
  struct internalvar *var;
  int varseen = 0;

  for (var = internalvars; var; var = var->next)
    {
      if (!varseen)
 {
   varseen = 1;
 }
      printf_filtered ("$%s = ", var->name);
      value_print (var->value, gdb_stdout, 0, Val_pretty_default);
      printf_filtered ("\n");
    }
  if (!varseen)
    printf_unfiltered ("No debugger convenience variables now defined.\nConvenience variables have names starting with \"$\";\nuse \"set\" as in \"set $foo = 5\" to define them.\n");


}
