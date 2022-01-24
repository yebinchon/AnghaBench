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
typedef  int /*<<< orphan*/  u_char ;
struct peer {int dummy; } ;
typedef  int /*<<< orphan*/  sockaddr_u ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct peer* FUNC1 (int /*<<< orphan*/ *,struct peer*,int,int /*<<< orphan*/ ,int*) ; 
 struct peer* FUNC2 (char const*,int /*<<< orphan*/ ,struct peer*,int) ; 

struct peer *
FUNC3(
	sockaddr_u *	addr,
	const char *	hostname,
	struct peer *	start_peer,
	int		mode,
	u_char		cast_flags,
	int *		ip_count
	)
{
	if (hostname != NULL)
		return FUNC2(hostname, FUNC0(addr),
					     start_peer, mode);
	else
		return FUNC1(addr, start_peer, mode,
					     cast_flags, ip_count);
}