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
typedef  int /*<<< orphan*/  va_list ;
struct netgr_state {int dummy; } ;

/* Variables and functions */
 int NS_SUCCESS ; 
 int NS_UNAVAIL ; 
 int /*<<< orphan*/  FUNC0 (struct netgr_state*) ; 
 scalar_t__ FUNC1 (struct netgr_state**) ; 

__attribute__((used)) static int
FUNC2(void *retval, void *mdata, va_list ap)
{
	struct netgr_state *st;

	if (FUNC1(&st) != 0)
		return (NS_UNAVAIL);
	FUNC0(st);
	return (NS_SUCCESS);
}