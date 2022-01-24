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
struct monitor {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct monitor*,int) ; 
 struct monitor* FUNC1 (int,int) ; 

struct monitor *
FUNC2(void)
{
	struct monitor *mon;

	mon = FUNC1(1, sizeof(*mon));
	FUNC0(mon, 1);

	return mon;
}