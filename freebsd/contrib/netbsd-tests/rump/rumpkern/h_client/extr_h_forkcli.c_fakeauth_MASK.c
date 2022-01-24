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
typedef  int uint32_t ;
struct rumpclient_fork {int dummy; } ;

/* Variables and functions */
 scalar_t__ ESRCH ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct rumpclient_fork*) ; 
 struct rumpclient_fork* FUNC3 () ; 

__attribute__((used)) static void
FUNC4(void)
{
	struct rumpclient_fork *rf;
	uint32_t *auth;
	int rv;

	if ((rf = FUNC3()) == NULL)
		FUNC0(1, "prefork");

	/* XXX: we know the internal structure of rf */
	auth = (void *)rf;
	*(auth+3) = *(auth+3) ^ 0x1;

	rv = FUNC2(rf);
	if (!(rv == -1 && errno == ESRCH))
		FUNC1(1);
}