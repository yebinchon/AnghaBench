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
struct tui_data_element {scalar_t__ value; } ;
struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;
typedef  enum tui_status { ____Placeholder_tui_status } tui_status ;

/* Variables and functions */
 int FALSE ; 
 int MAX_REGISTER_SIZE ; 
 int TRUE ; 
 int TUI_FAILURE ; 
 int TUI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct frame_info*,int,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct gdbarch*,int) ; 
 scalar_t__ target_has_registers ; 
 int /*<<< orphan*/  FUNC3 (struct gdbarch*,struct frame_info*,struct tui_data_element*,int) ; 

__attribute__((used)) static enum tui_status
FUNC4 (struct gdbarch *gdbarch, struct frame_info *frame,
                  struct tui_data_element *data, int regnum, int *changedp)
{
  enum tui_status ret = TUI_FAILURE;

  if (changedp)
    *changedp = FALSE;
  if (target_has_registers)
    {
      char buf[MAX_REGISTER_SIZE];

      FUNC0 (frame, regnum, buf);
      /* NOTE: cagney/2003-03-13: This is bogus.  It is refering to
         the register cache and not the frame which could have pulled
         the register value off the stack.  */
      if (FUNC1 (regnum) >= 0)
        {
          if (changedp)
            {
              int size = FUNC2 (gdbarch, regnum);
              char *old = (char*) data->value;
              int i;

              for (i = 0; i < size; i++)
                if (buf[i] != old[i])
                  {
                    *changedp = TRUE;
                    old[i] = buf[i];
                  }
            }

          /* Reformat the data content if the value changed.  */
          if (changedp == 0 || *changedp == TRUE)
            FUNC3 (gdbarch, frame, data, regnum);
          ret = TUI_SUCCESS;
        }
    }
  return ret;
}