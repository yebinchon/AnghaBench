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
struct addrinfo {struct addrinfo* ai_next; int /*<<< orphan*/  ai_canonname; int /*<<< orphan*/  ai_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct addrinfo *ai)
{
	if (ai == NULL)
		return;

	FUNC0(ai->ai_addr);
	FUNC0(ai->ai_canonname);
	FUNC1(ai->ai_next);
}