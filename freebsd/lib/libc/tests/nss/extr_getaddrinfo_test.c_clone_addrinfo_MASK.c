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
typedef  struct addrinfo {int ai_addrlen; struct addrinfo const* ai_next; struct addrinfo const* ai_addr; int /*<<< orphan*/ * ai_canonname; } const addrinfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo const*,struct addrinfo const*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct addrinfo *dest, struct addrinfo const *src)
{

	FUNC0(dest != NULL);
	FUNC0(src != NULL);

	FUNC2(dest, src, sizeof(struct addrinfo));
	if (src->ai_canonname != NULL)
		dest->ai_canonname = FUNC3(src->ai_canonname);

	if (src->ai_addr != NULL) {
		dest->ai_addr = FUNC1(src->ai_addrlen);
		FUNC0(dest->ai_addr != NULL);
		FUNC2(dest->ai_addr, src->ai_addr, src->ai_addrlen);
	}

	if (src->ai_next != NULL) {
		dest->ai_next = FUNC1(sizeof(struct addrinfo));
		FUNC0(dest->ai_next != NULL);
		FUNC4(dest->ai_next, src->ai_next);
	}
}