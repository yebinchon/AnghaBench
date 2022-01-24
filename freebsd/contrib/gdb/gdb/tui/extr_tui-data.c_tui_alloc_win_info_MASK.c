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
struct TYPE_2__ {int type; } ;
struct tui_win_info {TYPE_1__ generic; } ;
typedef  enum tui_win_type { ____Placeholder_tui_win_type } tui_win_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tui_win_info*) ; 
 scalar_t__ FUNC1 (int) ; 

struct tui_win_info *
FUNC2 (enum tui_win_type type)
{
  struct tui_win_info * win_info = (struct tui_win_info *) NULL;

  win_info = (struct tui_win_info *) FUNC1 (sizeof (struct tui_win_info));
  if ((win_info != NULL))
    {
      win_info->generic.type = type;
      FUNC0 (win_info);
    }

  return win_info;
}