#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  sockaddr_u ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ isc_sockaddr_t ;
typedef  int /*<<< orphan*/  isc_netaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int
FUNC5(
	const sockaddr_u *	a,
	const sockaddr_u *	b,
	int			prefixlen
	)
{
	isc_netaddr_t		isc_a;
	isc_netaddr_t		isc_b;
	isc_sockaddr_t		isc_sa;

	FUNC0(isc_sa);
	FUNC3(&isc_sa.type, a, FUNC4(sizeof(isc_sa.type), sizeof(*a)));
	FUNC2(&isc_a, &isc_sa);

	FUNC0(isc_sa);
	FUNC3(&isc_sa.type, b, FUNC4(sizeof(isc_sa.type), sizeof(*b)));
	FUNC2(&isc_b, &isc_sa);

	return (int)FUNC1(&isc_a, &isc_b,
					 (u_int)prefixlen);
}