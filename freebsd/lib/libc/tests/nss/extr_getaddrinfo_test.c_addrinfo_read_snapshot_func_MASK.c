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
struct addrinfo {struct addrinfo* ai_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct addrinfo*,char*) ; 
 struct addrinfo* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (char**,char*) ; 

__attribute__((used)) static int
FUNC6(struct addrinfo *ai, char *line)
{
	struct addrinfo *ai2;
	char *s, *ps;
	int rv;

	FUNC4("1 line read from snapshot:\n%s\n", line);

	rv = 0;
	ps = line;

	s = FUNC5(&ps, ":");
	if (s == NULL)
		return (-1);

	rv = FUNC1(ai, s);
	if (rv != 0)
		return (-1);

	ai2 = ai;
	while ((s = FUNC5(&ps, ":")) != NULL) {
		ai2->ai_next = FUNC2(1, sizeof(struct addrinfo));
		FUNC0(ai2->ai_next != NULL);

		rv = FUNC1(ai2->ai_next, s);
		if (rv != 0) {
			FUNC3(ai);
			ai = NULL;
			return (-1);
		}

		ai2 = ai2->ai_next;
	}

	return (0);
}