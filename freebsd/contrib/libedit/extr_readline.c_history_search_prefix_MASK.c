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
typedef  int /*<<< orphan*/  HistEvent ;

/* Variables and functions */
 int /*<<< orphan*/  H_NEXT_STR ; 
 int /*<<< orphan*/  H_PREV_STR ; 
 int /*<<< orphan*/  h ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 

int
FUNC1(const char *str, int direction)
{
	HistEvent ev;

	return (FUNC0(h, &ev, direction < 0 ?
	    H_PREV_STR : H_NEXT_STR, str));
}