#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int width; int height; int /*<<< orphan*/  handle; } ;
struct TYPE_5__ {TYPE_1__ generic; } ;

/* Variables and functions */
 TYPE_2__* TUI_DATA_WIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5 (char *prompt)
{
  FUNC3 (TUI_DATA_WIN->generic.handle);
  FUNC2 (TUI_DATA_WIN);
  if (prompt != (char *) NULL)
    {
      int half_width = (TUI_DATA_WIN->generic.width - 2) / 2;
      int x_pos;

      if (FUNC1 (prompt) >= half_width)
	x_pos = 1;
      else
	x_pos = half_width - FUNC1 (prompt);
      FUNC0 (TUI_DATA_WIN->generic.handle,
		 (TUI_DATA_WIN->generic.height / 2),
		 x_pos,
		 prompt);
    }
  FUNC4 (TUI_DATA_WIN->generic.handle);
}