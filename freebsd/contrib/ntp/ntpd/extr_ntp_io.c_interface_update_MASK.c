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
typedef  int /*<<< orphan*/  interface_receiver_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  NTP_PORT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ disable_dynamic_updates ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

void
FUNC5(
	interface_receiver_t	receiver,
	void *			data)
{
	int new_interface_found;

	if (disable_dynamic_updates)
		return;

	FUNC0();
	new_interface_found = FUNC4(NTP_PORT, receiver, data);
	FUNC1();

	if (!new_interface_found)
		return;

#ifdef DEBUG
	msyslog(LOG_DEBUG, "new interface(s) found: waking up resolver");
#endif
	FUNC2();
}