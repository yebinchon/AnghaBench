
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_cmd (char*,int ,int ,char*,int *) ;
 int no_class ;
 int show_convenience ;
 int show_values ;
 int showlist ;

void
_initialize_values (void)
{
  add_cmd ("convenience", no_class, show_convenience,
    "Debugger convenience (\"$foo\") variables.\nThese variables are created when you assign them values;\nthus, \"print $foo=1\" gives \"$foo\" the value 1.  Values may be any type.\n\nA few convenience variables are given values automatically:\n\"$_\"holds the last address examined with \"x\" or \"info lines\",\n\"$__\" holds the contents of the last address examined with \"x\".",





    &showlist);

  add_cmd ("values", no_class, show_values,
    "Elements of value history around item number IDX (or last ten).",
    &showlist);
}
