#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PF_INET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const struct sockaddr *saddr)
{
	if (saddr->sa_family == PF_INET)
	{
		struct sockaddr_in *saddr4 = (struct sockaddr_in *) saddr;
		if (FUNC1(FUNC2(saddr4->sin_addr.s_addr))) return 0;
		else return -1;
	}
	else
	{
		struct sockaddr_in6 *saddr6 = (struct sockaddr_in6 *) saddr;
		if (FUNC0(&saddr6->sin6_addr)) return 0;
		else return -1;
	}
}