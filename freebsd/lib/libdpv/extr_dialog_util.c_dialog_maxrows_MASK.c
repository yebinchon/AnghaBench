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
struct TYPE_2__ {int ws_row; } ;

/* Variables and functions */
 TYPE_1__* maxsize ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ use_xdialog ; 
 int /*<<< orphan*/  FUNC1 () ; 

int
FUNC2(void)
{

	if (use_xdialog && maxsize == NULL)
		FUNC1(); /* initialize maxsize for GUI */
	else if (!use_xdialog)
		FUNC0(); /* update maxsize for TTY */
	return (maxsize->ws_row);
}