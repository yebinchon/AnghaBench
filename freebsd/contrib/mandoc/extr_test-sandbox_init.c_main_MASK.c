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
 int /*<<< orphan*/  SANDBOX_NAMED ; 
 int /*<<< orphan*/  kSBXProfileNoInternet ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 

int
FUNC2(void)
{
	char	*ep;
	int	 rc;

	rc = FUNC1(kSBXProfileNoInternet, SANDBOX_NAMED, &ep);
	if (-1 == rc)
		FUNC0(ep);
	return(-1 == rc);
}