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
struct sockaddr_ib {int /*<<< orphan*/  sib_addr; int /*<<< orphan*/  sib_family; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_IB ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int FUNC0 (char*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_ib*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  unmapped_addr ; 

__attribute__((used)) static int FUNC3(char *dst, struct sockaddr *addr)
{
	struct sockaddr_ib *sib;

	if (!unmapped_addr)
		return FUNC0(dst, addr);

	sib = (struct sockaddr_ib *) addr;
	FUNC2(sib, 0, sizeof *sib);
	sib->sib_family = AF_IB;
	FUNC1(AF_INET6, dst, &sib->sib_addr);
	return 0;
}