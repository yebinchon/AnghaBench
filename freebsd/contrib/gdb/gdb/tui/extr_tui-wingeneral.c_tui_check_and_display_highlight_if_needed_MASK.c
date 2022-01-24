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
struct TYPE_2__ {scalar_t__ type; } ;
struct tui_win_info {scalar_t__ is_highlighted; TYPE_1__ generic; } ;

/* Variables and functions */
 scalar_t__ CMD_WIN ; 
 int /*<<< orphan*/  FUNC0 (struct tui_win_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct tui_win_info*) ; 

void
FUNC2 (struct tui_win_info * win_info)
{
  if (win_info != NULL && win_info->generic.type != CMD_WIN)
    {
      if (win_info->is_highlighted)
	FUNC0 (win_info);
      else
	FUNC1 (win_info);

    }
  return;
}