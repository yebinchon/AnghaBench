
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct qt_args {char* args; int from_tty; } ;


 int RETURN_MASK_ALL ;
 int catch_errors (int ,struct qt_args*,char*,int ) ;
 int exit (int) ;
 struct value* parse_and_eval (char*) ;
 int quit_target ;
 scalar_t__ value_as_long (struct value*) ;

void
quit_force (char *args, int from_tty)
{
  int exit_code = 0;
  struct qt_args qt;



  if (args)
    {
      struct value *val = parse_and_eval (args);

      exit_code = (int) value_as_long (val);
    }

  qt.args = args;
  qt.from_tty = from_tty;


  catch_errors (quit_target, &qt,
         "Quitting: ", RETURN_MASK_ALL);

  exit (exit_code);
}
