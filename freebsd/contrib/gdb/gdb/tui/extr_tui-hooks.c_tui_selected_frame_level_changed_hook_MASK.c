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
struct symtab {int dummy; } ;
struct frame_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_WIN ; 
 struct frame_info* deprecated_selected_frame ; 
 struct symtab* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct symtab*) ; 
 int /*<<< orphan*/  FUNC3 (struct frame_info*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int tui_refreshing_registers ; 
 int /*<<< orphan*/  FUNC5 (struct frame_info*) ; 

__attribute__((used)) static void
FUNC6 (int level)
{
  struct frame_info *fi;

  fi = deprecated_selected_frame;
  /* Ensure that symbols for this frame are read in.  Also, determine the
     source language of this frame, and switch to it if desired.  */
  if (fi)
    {
      struct symtab *s;
      
      s = FUNC0 (FUNC1 (fi));
      /* elz: this if here fixes the problem with the pc not being displayed
         in the tui asm layout, with no debug symbols. The value of s 
         would be 0 here, and select_source_symtab would abort the
         command by calling the 'error' function */
      if (s)
        FUNC2 (s);

      /* Display the frame position (even if there is no symbols).  */
      FUNC5 (fi);

      /* Refresh the register window if it's visible.  */
      if (FUNC4 (DATA_WIN))
        {
          tui_refreshing_registers = 1;
          FUNC3 (fi);
          tui_refreshing_registers = 0;
        }
    }
}