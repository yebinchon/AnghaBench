
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
struct cleanup {int dummy; } ;
typedef enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;


 int LOC_AND_ADDRESS ;
 int MI_CMD_DONE ;
 int QUIT ;
 int atoi (char*) ;
 int do_cleanups (struct cleanup*) ;
 int error (char*) ;
 struct frame_info* get_current_frame () ;
 struct frame_info* get_prev_frame (struct frame_info*) ;
 struct cleanup* make_cleanup_ui_out_list_begin_end (int ,char*) ;
 int print_frame_info (struct frame_info*,int,int ,int ) ;
 int target_has_stack ;
 int uiout ;

enum mi_cmd_result
mi_cmd_stack_list_frames (char *command, char **argv, int argc)
{
  int frame_low;
  int frame_high;
  int i;
  struct cleanup *cleanup_stack;
  struct frame_info *fi;

  if (!target_has_stack)
    error ("mi_cmd_stack_list_frames: No stack.");

  if (argc > 2 || argc == 1)
    error ("mi_cmd_stack_list_frames: Usage: [FRAME_LOW FRAME_HIGH]");

  if (argc == 2)
    {
      frame_low = atoi (argv[0]);
      frame_high = atoi (argv[1]);
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
    error ("mi_cmd_stack_list_frames: Not enough frames in stack.");

  cleanup_stack = make_cleanup_ui_out_list_begin_end (uiout, "stack");



  for (;
       fi && (i <= frame_high || frame_high == -1);
       i++, fi = get_prev_frame (fi))
    {
      QUIT;




      print_frame_info (fi ,
   i ,
   LOC_AND_ADDRESS ,
   0 );
    }

  do_cleanups (cleanup_stack);
  if (i < frame_high)
    error ("mi_cmd_stack_list_frames: Not enough frames in stack.");

  return MI_CMD_DONE;
}
