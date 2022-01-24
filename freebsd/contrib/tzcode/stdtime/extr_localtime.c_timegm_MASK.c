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
typedef  int /*<<< orphan*/  time_t ;
struct tm {scalar_t__ tm_isdst; } ;

/* Variables and functions */
 int /*<<< orphan*/  gmtsub ; 
 int /*<<< orphan*/  FUNC0 (struct tm* const,int /*<<< orphan*/ ,long) ; 

time_t
FUNC1(struct tm *const tmp)
{
	if (tmp != NULL)
		tmp->tm_isdst = 0;
	return FUNC0(tmp, gmtsub, 0L);
}