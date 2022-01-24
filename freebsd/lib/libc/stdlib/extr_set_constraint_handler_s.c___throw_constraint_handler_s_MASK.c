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
typedef  int /*<<< orphan*/  errno_t ;
typedef  int /*<<< orphan*/  (* constraint_handler_t ) (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;

/* Variables and functions */
 scalar_t__ __isthreaded ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ch_lock ; 

void
FUNC3(const char * restrict msg, errno_t error)
{
	constraint_handler_t ch;

	if (__isthreaded)
		FUNC1(&ch_lock);
	ch = &_ch != NULL ? *_ch : NULL;
	if (__isthreaded)
		FUNC2(&ch_lock);
	if (ch != NULL)
		ch(msg, NULL, error);
}