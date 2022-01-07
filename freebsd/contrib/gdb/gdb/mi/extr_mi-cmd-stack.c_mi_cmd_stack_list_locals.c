
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
typedef enum print_values { ____Placeholder_print_values } print_values ;
typedef enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;


 int MI_CMD_DONE ;
 int PRINT_ALL_VALUES ;
 int PRINT_NO_VALUES ;
 int PRINT_SIMPLE_VALUES ;
 int error (char*) ;
 struct frame_info* get_selected_frame () ;
 int list_args_or_locals (int,int,struct frame_info*) ;
 scalar_t__ strcmp (char*,char*) ;

enum mi_cmd_result
mi_cmd_stack_list_locals (char *command, char **argv, int argc)
{
  struct frame_info *frame;
  enum print_values print_values;

  if (argc != 1)
    error ("mi_cmd_stack_list_locals: Usage: PRINT_VALUES");

   frame = get_selected_frame ();

   if (strcmp (argv[0], "0") == 0
       || strcmp (argv[0], "--no-values") == 0)
     print_values = PRINT_NO_VALUES;
   else if (strcmp (argv[0], "1") == 0
     || strcmp (argv[0], "--all-values") == 0)
     print_values = PRINT_ALL_VALUES;
   else if (strcmp (argv[0], "2") == 0
     || strcmp (argv[0], "--simple-values") == 0)
     print_values = PRINT_SIMPLE_VALUES;
   else
     error ("Unknown value for PRINT_VALUES: must be: 0 or \"--no-values\", 1 or \"--all-values\", 2 or \"--simple-values\"");
  list_args_or_locals (1, print_values, frame);
  return MI_CMD_DONE;
}
