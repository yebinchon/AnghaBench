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
struct addrinfo {int ai_flags; int ai_family; int ai_socktype; int ai_protocol; int /*<<< orphan*/ * ai_next; void* ai_addr; int /*<<< orphan*/ * ai_canonname; scalar_t__ ai_addrlen; } ;
typedef  scalar_t__ socklen_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void const*,void*,size_t) ; 
 char* FUNC1 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*) ; 
 struct addrinfo* FUNC3 (int) ; 
 void* FUNC4 (int /*<<< orphan*/  const*,char*,size_t*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (char const*) ; 

__attribute__((used)) static struct addrinfo *
FUNC7(const nvlist_t *nvl)
{
	struct addrinfo *ai;
	const void *addr;
	size_t addrlen;
	const char *canonname;

	addr = FUNC4(nvl, "ai_addr", &addrlen);
	ai = FUNC3(sizeof(*ai) + addrlen);
	if (ai == NULL)
		return (NULL);
	ai->ai_flags = (int)FUNC5(nvl, "ai_flags");
	ai->ai_family = (int)FUNC5(nvl, "ai_family");
	ai->ai_socktype = (int)FUNC5(nvl, "ai_socktype");
	ai->ai_protocol = (int)FUNC5(nvl, "ai_protocol");
	ai->ai_addrlen = (socklen_t)addrlen;
	canonname = FUNC1(nvl, "ai_canonname", NULL);
	if (canonname != NULL) {
		ai->ai_canonname = FUNC6(canonname);
		if (ai->ai_canonname == NULL) {
			FUNC2(ai);
			return (NULL);
		}
	} else {
		ai->ai_canonname = NULL;
	}
	ai->ai_addr = (void *)(ai + 1);
	FUNC0(addr, ai->ai_addr, addrlen);
	ai->ai_next = NULL;

	return (ai);
}