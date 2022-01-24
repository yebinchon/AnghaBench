#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct frame_info {int dummy; } ;
struct cleanup {int dummy; } ;
typedef  enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;

/* Variables and functions */
 int MI_CMD_DONE ; 
 int /*<<< orphan*/  QUIT ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct frame_info* FUNC3 () ; 
 struct frame_info* FUNC4 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,struct frame_info*) ; 
 struct cleanup* FUNC6 (int /*<<< orphan*/ ,char*) ; 
 struct cleanup* FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  uiout ; 

enum mi_cmd_result
FUNC9 (char *command, char **argv, int argc)
{
  int frame_low;
  int frame_high;
  int i;
  struct frame_info *fi;
  struct cleanup *cleanup_stack_args;

  if (argc < 1 || argc > 3 || argc == 2)
    FUNC2 ("mi_cmd_stack_list_args: Usage: PRINT_VALUES [FRAME_LOW FRAME_HIGH]");

  if (argc == 3)
    {
      frame_low = FUNC0 (argv[1]);
      frame_high = FUNC0 (argv[2]);
    }
  else
    {
      /* Called with no arguments, it means we want args for the whole
         backtrace. */
      frame_low = -1;
      frame_high = -1;
    }

  /* Let's position fi on the frame at which to start the
     display. Could be the innermost frame if the whole stack needs
     displaying, or if frame_low is 0. */
  for (i = 0, fi = FUNC3 ();
       fi && i < frame_low;
       i++, fi = FUNC4 (fi));

  if (fi == NULL)
    FUNC2 ("mi_cmd_stack_list_args: Not enough frames in stack.");

  cleanup_stack_args = FUNC6 (uiout, "stack-args");

  /* Now let's print the frames up to frame_high, or until there are
     frames in the stack. */
  for (;
       fi && (i <= frame_high || frame_high == -1);
       i++, fi = FUNC4 (fi))
    {
      struct cleanup *cleanup_frame;
      QUIT;
      cleanup_frame = FUNC7 (uiout, "frame");
      FUNC8 (uiout, "level", i);
      FUNC5 (0, FUNC0 (argv[0]), fi);
      FUNC1 (cleanup_frame);
    }

  FUNC1 (cleanup_stack_args);
  if (i < frame_high)
    FUNC2 ("mi_cmd_stack_list_args: Not enough frames in stack.");

  return MI_CMD_DONE;
}