
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_cmd (char*,int ,int ,char*,int *) ;
 int add_com (char*,int ,int ,char*) ;
 int add_com_alias (char*,char*,int ,int) ;
 int add_info (char*,int ,char*) ;
 int add_info_alias (char*,char*,int) ;
 int args_info ;
 int args_plus_locals_info ;
 int backtrace_command ;
 int backtrace_full_command ;
 int backtrace_limit ;
 int backtrace_limit_info ;
 int catch_info ;
 int class_alias ;
 int class_info ;
 int class_stack ;
 int class_support ;
 int current_frame_command ;
 scalar_t__ dbx_commands ;
 int down_command ;
 int down_silently_command ;
 int frame_command ;
 int frame_info ;
 int func_command ;
 int locals_info ;
 int return_command ;
 int select_frame_command ;
 int set_backtrace_limit_command ;
 int setlist ;
 int up_command ;
 int up_silently_command ;
 scalar_t__ xdb_commands ;

void
_initialize_stack (void)
{




  add_com ("return", class_stack, return_command,
    "Make selected stack frame return to its caller.\nControl remains in the debugger, but when you continue\nexecution will resume in the frame above the one now selected.\nIf an argument is given, it is an expression for the value to return.");




  add_com ("up", class_stack, up_command,
    "Select and print stack frame that called this one.\nAn argument says how many frames up to go.");

  add_com ("up-silently", class_support, up_silently_command,
    "Same as the `up' command, but does not print anything.\nThis is useful in command scripts.");


  add_com ("down", class_stack, down_command,
    "Select and print stack frame called by this one.\nAn argument says how many frames down to go.");

  add_com_alias ("do", "down", class_stack, 1);
  add_com_alias ("dow", "down", class_stack, 1);
  add_com ("down-silently", class_support, down_silently_command,
    "Same as the `down' command, but does not print anything.\nThis is useful in command scripts.");


  add_com ("frame", class_stack, frame_command,
    "Select and print a stack frame.\nWith no argument, print the selected stack frame.  (See also \"info frame\").\nAn argument specifies the frame to select.\nIt can be a stack frame number or the address of the frame.\nWith argument, nothing is printed if input is coming from\na command file or a user-defined command.");






  add_com_alias ("f", "frame", class_stack, 1);

  if (xdb_commands)
    {
      add_com ("L", class_stack, current_frame_command,
        "Print the current stack frame.\n");
      add_com_alias ("V", "frame", class_stack, 1);
    }
  add_com ("select-frame", class_stack, select_frame_command,
    "Select a stack frame without printing anything.\nAn argument specifies the frame to select.\nIt can be a stack frame number or the address of the frame.\n");



  add_com ("backtrace", class_stack, backtrace_command,
    "Print backtrace of all stack frames, or innermost COUNT frames.\nWith a negative argument, print outermost -COUNT frames.\nUse of the 'full' qualifier also prints the values of the local variables.\n");


  add_com_alias ("bt", "backtrace", class_stack, 0);
  if (xdb_commands)
    {
      add_com_alias ("t", "backtrace", class_stack, 0);
      add_com ("T", class_stack, backtrace_full_command,
        "Print backtrace of all stack frames, or innermost COUNT frames \nand the values of the local variables.\nWith a negative argument, print outermost -COUNT frames.\nUsage: T <count>\n");



    }

  add_com_alias ("where", "backtrace", class_alias, 0);
  add_info ("stack", backtrace_command,
     "Backtrace of the stack, or innermost COUNT frames.");
  add_info_alias ("s", "stack", 1);
  add_info ("frame", frame_info,
     "All about selected stack frame, or frame at ADDR.");
  add_info_alias ("f", "frame", 1);
  add_info ("locals", locals_info,
     "Local variables of current stack frame.");
  add_info ("args", args_info,
     "Argument variables of current stack frame.");
  if (xdb_commands)
    add_com ("l", class_info, args_plus_locals_info,
      "Argument and local variables of current stack frame.");

  if (dbx_commands)
    add_com ("func", class_stack, func_command,
      "Select the stack frame that contains <func>.\nUsage: func <name>\n");

  add_info ("catch", catch_info,
     "Exceptions that can be caught in the current stack frame.");
}
