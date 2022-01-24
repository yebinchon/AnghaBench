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
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

int FUNC1(eloop_signal_handler handler,
				    void *user_data)
{
	int ret = FUNC0(SIGINT, handler, user_data);
	if (ret == 0)
		ret = FUNC0(SIGTERM, handler, user_data);
	return ret;
}