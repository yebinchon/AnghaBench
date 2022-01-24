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
struct in_addr {int dummy; } ;
struct hostent {int /*<<< orphan*/  h_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 struct hostent* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,struct in_addr*) ; 
 int /*<<< orphan*/  FUNC3 (struct in_addr*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4 (const char* str, struct in_addr* addr)
{
	struct hostent* hp;

	if (FUNC2 (str, addr))
		return;

	hp = FUNC1 (str);
	if (!hp)
		FUNC0 (1, "unknown host %s", str);

	FUNC3 (addr, hp->h_addr, sizeof (struct in_addr));
}