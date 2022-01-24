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

/* Variables and functions */
 int /*<<< orphan*/  SIGPIPE ; 
 scalar_t__ rmtape ; 
 int /*<<< orphan*/  rmtconnaborted ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * rmtpeer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 

int
FUNC3(const char *host)
{

	rmtpeer = FUNC2(host);
	if (rmtpeer == NULL)
		return (0);
	FUNC1(SIGPIPE, rmtconnaborted);
	FUNC0();
	if (rmtape < 0)
		return (0);
	return (1);
}