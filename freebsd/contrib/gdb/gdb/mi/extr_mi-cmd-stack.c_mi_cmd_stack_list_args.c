
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
struct cleanup {int dummy; } ;
typedef enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;


 int MI_CMD_DONE ;
 int QUIT ;
 int atoi (char*) ;
 int do_cleanups (struct cleanup*) ;
 int error (char*) ;
 struct frame_info* get_current_frame () ;
 struct frame_info* get_prev_frame (struct frame_info*) ;
 int list_args_or_locals (int ,int,struct frame_info*) ;
 struct cleanup* make_cleanup_ui_out_list_begin_end (int ,char*) ;
 struct cleanup* make_cleanup_ui_out_tuple_begin_end (int ,char*) ;
 int ui_out_field_int (int ,char*,int) ;
 int uiout ;

enum mi_cmd_result
mi_cmd_stack_list_args (char *command, char **argv, int argc)
{
  int frame_low;
  int frame_high;
  int i;
  struct frame_info *fi;
  struct cleanup *cleanup_stack_args;

  if (argc < 1 || argc > 3 || argc == 2)
    error ("mi_cmd_stack_list_args: Usage: PRINT_VALUES [FRAME_LOW FRAME_HIGH]");

  if (argc == 3)
    {
      frame_low = atoi (argv[1]);
      frame_high = atoi (argv[2]);
    }
  else
    {


      frame_low = -1;
      frame_high = -1;
    }




  for (i = 0, fi = get_current_frame ();
       fi && i < frame_low;
       i++, fi = get_prev_frame (fi));

  if (fi == ((void*)0))
    error ("mi_cmd_stack_list_args: Not enough frames in stack.");

  cleanup_stack_args = make_cleanup_ui_out_list_begin_end (uiout, "stack-args");



  for (;
       fi && (i <= frame_high || frame_high == -1);
       i++, fi = get_prev_frame (fi))
    {
      struct cleanup *cleanup_frame;
      QUIT;
      cleanup_frame = make_cleanup_ui_out_tuple_begin_end (uiout, "frame");
      ui_out_field_int (uiout, "level", i);
      list_args_or_locals (0, atoi (argv[0]), fi);
      do_cleanups (cleanup_frame);
    }

  do_cleanups (cleanup_stack_args);
  if (i < frame_high)
    error ("mi_cmd_stack_list_args: Not enough frames in stack.");

  return MI_CMD_DONE;
}
