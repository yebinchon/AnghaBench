#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int width; int /*<<< orphan*/  handle; scalar_t__* content; } ;
struct tui_win_info {TYPE_3__ generic; } ;
struct TYPE_4__ {scalar_t__ is_exec_point; int /*<<< orphan*/  line; } ;
struct TYPE_5__ {TYPE_1__ source; } ;
struct tui_win_element {TYPE_2__ which_element; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_STANDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (struct tui_win_info * win_info, int lineno)
{
  struct tui_win_element * line;
  int x, y;

  line = (struct tui_win_element *) win_info->generic.content[lineno - 1];
  if (line->which_element.source.is_exec_point)
    FUNC4 (win_info->generic.handle, A_STANDOUT);

  FUNC1 (win_info->generic.handle, lineno, 1,
             line->which_element.source.line);
  if (line->which_element.source.is_exec_point)
    FUNC3 (win_info->generic.handle, A_STANDOUT);

  /* Clear to end of line but stop before the border.  */
  FUNC0 (win_info->generic.handle, y, x);
  while (x + 1 < win_info->generic.width)
    {
      FUNC2 (win_info->generic.handle, ' ');
      FUNC0 (win_info->generic.handle, y, x);
    }
}