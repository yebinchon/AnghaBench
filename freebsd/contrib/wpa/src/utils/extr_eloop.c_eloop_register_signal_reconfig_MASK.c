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
typedef  int /*<<< orphan*/  eloop_signal_handler ;

/* Variables and functions */
 int /*<<< orphan*/  SIGHUP ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

int FUNC1(eloop_signal_handler handler,
				   void *user_data)
{
#ifdef CONFIG_NATIVE_WINDOWS
	return 0;
#else /* CONFIG_NATIVE_WINDOWS */
	return FUNC0(SIGHUP, handler, user_data);
#endif /* CONFIG_NATIVE_WINDOWS */
}