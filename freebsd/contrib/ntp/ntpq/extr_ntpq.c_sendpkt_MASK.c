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
 int /*<<< orphan*/  currenthost ; 
 int debug ; 
 int /*<<< orphan*/  FUNC0 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sockfd ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(
	void *	xdata,
	size_t	xdatalen
	)
{
	if (debug >= 3)
		FUNC1("Sending %zu octets\n", xdatalen);

	if (FUNC2(sockfd, xdata, xdatalen, 0) == -1) {
		FUNC3("write to %s failed", currenthost);
		return -1;
	}

	if (debug >= 4) {
		FUNC1("Request packet:\n");
		FUNC0(xdata, xdatalen);
	}
	return 0;
}