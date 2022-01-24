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
struct addrinfo {int /*<<< orphan*/  ai_flags; int /*<<< orphan*/  ai_socktype; } ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  AI_NUMERICHOST ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(const char *hostname)
{
	struct addrinfo hints, *ai;

	/*
	 * We shouldn't ever get a null host but if we do then log an error
	 * and return -1 which stops DNS key fingerprint processing.
	 */
	if (hostname == NULL) {
		FUNC0("is_numeric_hostname called with NULL hostname");
		return -1;
	}

	FUNC3(&hints, 0, sizeof(hints));
	hints.ai_socktype = SOCK_DGRAM;
	hints.ai_flags = AI_NUMERICHOST;

	if (FUNC2(hostname, NULL, &hints, &ai) == 0) {
		FUNC1(ai);
		return -1;
	}

	return 0;
}