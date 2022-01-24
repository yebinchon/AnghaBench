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
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; struct addrinfo* ai_next; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct addrinfo* FUNC1 (char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 

int
FUNC4(int sd, int af, const char *addr)
{
	struct addrinfo *cliai, *ai;
	int err;

	if ((cliai = FUNC1(addr, 0, af)) == NULL)
		return (-1);
	for (ai = cliai; ai != NULL; ai = ai->ai_next)
		if ((err = FUNC0(sd, ai->ai_addr, ai->ai_addrlen)) == 0)
			break;
	if (err != 0)
		FUNC2();
	FUNC3(cliai);
	return (err == 0 ? 0 : -1);
}