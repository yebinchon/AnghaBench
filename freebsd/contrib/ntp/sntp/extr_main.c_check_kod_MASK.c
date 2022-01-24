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
typedef  char kod_entry ;
struct addrinfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 char* FUNC1 (struct addrinfo const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,char**) ; 

int
FUNC5(
	const struct addrinfo *	ai
	)
{
	char *hostname;
	struct kod_entry *reason;

	/* Is there a KoD on file for this address? */
	hostname = FUNC1(ai);
	FUNC0(2, ("check_kod: checking <%s>\n", hostname));
	if (FUNC4(hostname, &reason)) {
		FUNC3("prior KoD for %s, skipping.\n",
			hostname);
		FUNC2(reason);
		FUNC2(hostname);

		return 1;
	}
	FUNC2(hostname);

	return 0;
}