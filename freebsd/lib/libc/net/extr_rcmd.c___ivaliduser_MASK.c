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
typedef  int /*<<< orphan*/  u_int32_t ;
struct sockaddr_in {int sin_len; int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sin ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int FUNC0 (int /*<<< orphan*/ *,struct sockaddr*,int,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 

int
FUNC3(FILE *hostf, u_int32_t raddr, const char *luser, const char *ruser)
{
	struct sockaddr_in sin;

	FUNC2(&sin, 0, sizeof(sin));
	sin.sin_family = AF_INET;
	sin.sin_len = sizeof(struct sockaddr_in);
	FUNC1(&sin.sin_addr, &raddr, sizeof(sin.sin_addr));
	return FUNC0(hostf, (struct sockaddr *)&sin, sin.sin_len,
		luser, ruser);
}