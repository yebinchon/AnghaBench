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
struct tui_win_info {int dummy; } ;
struct TYPE_2__ {int count; scalar_t__* list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tui_win_info*) ; 
 TYPE_1__* FUNC1 () ; 

void
FUNC2 (void)
{
  int i;

  for (i = 0; i < (FUNC1 ())->count; i++)
    FUNC0 ((struct tui_win_info *) (FUNC1 ())->list[i]);
}