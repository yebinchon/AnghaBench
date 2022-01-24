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
typedef  int /*<<< orphan*/ * constraint_handler_t ;

/* Variables and functions */
 scalar_t__ __isthreaded ; 
 int /*<<< orphan*/ ** _ch ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ch_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** FUNC3 (int) ; 

constraint_handler_t
FUNC4(constraint_handler_t handler)
{
	constraint_handler_t *new, *old, ret;

	new = FUNC3(sizeof(constraint_handler_t));
	if (new == NULL)
		return (NULL);
	*new = handler;
	if (__isthreaded)
		FUNC0(&ch_lock);
	old = _ch;
	_ch = new;
	if (__isthreaded)
		FUNC1(&ch_lock);
	if (old == NULL) {
		ret = NULL;
	} else {
		ret = *old;
		FUNC2(old);
	}
	return (ret);
}