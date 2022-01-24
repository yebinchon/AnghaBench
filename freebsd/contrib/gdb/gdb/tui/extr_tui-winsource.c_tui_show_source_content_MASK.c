#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ content_size; int /*<<< orphan*/  content_in_use; } ;
struct tui_win_info {TYPE_1__ generic; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct tui_win_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct tui_win_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct tui_win_info*,int) ; 

void
FUNC4 (struct tui_win_info * win_info)
{
  if (win_info->generic.content_size > 0)
    {
      int lineno;

      for (lineno = 1; lineno <= win_info->generic.content_size; lineno++)
        FUNC3 (win_info, lineno);
    }
  else
    FUNC1 (win_info, TRUE);

  FUNC0 (win_info);
  FUNC2 (&win_info->generic);
  win_info->generic.content_in_use = TRUE;
}