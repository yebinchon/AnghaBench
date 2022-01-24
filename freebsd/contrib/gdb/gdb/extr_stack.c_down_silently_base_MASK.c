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

/* Variables and functions */
 scalar_t__ deprecated_selected_frame ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct frame_info* FUNC1 (scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ target_has_stack ; 

__attribute__((used)) static void
FUNC6 (char *count_exp)
{
  struct frame_info *frame;
  int count = -1, count1;
  if (count_exp)
    count = -FUNC3 (count_exp);
  count1 = count;

  if (target_has_stack == 0 || deprecated_selected_frame == 0)
    FUNC0 ("No stack.");

  frame = FUNC1 (deprecated_selected_frame, &count1);
  if (count1 != 0 && count_exp == 0)
    {

      /* We only do this if count_exp is not specified.  That way "down"
         means to really go down (and let me know if that is
         impossible), but "down 9999" can be used to mean go all the way
         down without getting an error.  */

      FUNC0 ("Bottom (i.e., innermost) frame selected; you cannot go down.");
    }

  FUNC4 (frame);
  FUNC5 (FUNC2 (deprecated_selected_frame));
}