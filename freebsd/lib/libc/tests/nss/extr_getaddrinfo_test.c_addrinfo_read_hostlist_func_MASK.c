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
struct addrinfo {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct addrinfo*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*,struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct addrinfo**) ; 
 int /*<<< orphan*/  hints ; 
 int /*<<< orphan*/  FUNC4 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static int
FUNC6(struct addrinfo *ai, char *line)
{
	struct addrinfo *result;
	int rv;

	FUNC5("resolving %s: ", line);
	rv = FUNC3(line, NULL, &hints, &result);
	if (rv == 0) {
		FUNC5("found\n");

		rv = FUNC0(result, NULL);
		if (rv != 0) {
			FUNC2(result);
			result = NULL;
			return (rv);
		}

		FUNC1(ai, result);
		FUNC2(result);
		result = NULL;
	} else {
		FUNC5("not found\n");

 		FUNC4(ai, 0, sizeof(struct addrinfo));
	}
	return (0);
}