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
struct xaddr {int dummy; } ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/ * ai_addr; int /*<<< orphan*/  ai_flags; } ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  AI_NUMERICHOST ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct xaddr*) ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*,char,int) ; 

__attribute__((used)) static int
FUNC4(const char *p, struct xaddr *n)
{
	struct addrinfo hints, *ai = NULL;
	int ret = -1;

	FUNC3(&hints, '\0', sizeof(hints));
	hints.ai_flags = AI_NUMERICHOST;

	if (p == NULL || FUNC2(p, NULL, &hints, &ai) != 0)
		goto out;
	if (ai == NULL || ai->ai_addr == NULL)
		goto out;
	if (n != NULL && FUNC0(ai->ai_addr, ai->ai_addrlen, n) == -1)
		goto out;
	/* success */
	ret = 0;
 out:
	if (ai != NULL)
		FUNC1(ai);
	return ret;
}