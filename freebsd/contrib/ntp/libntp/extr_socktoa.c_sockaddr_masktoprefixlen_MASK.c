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
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  sockaddr_u ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ isc_sockaddr_t ;
typedef  scalar_t__ isc_result_t ;
typedef  int /*<<< orphan*/  isc_netaddr_t ;

/* Variables and functions */
 scalar_t__ ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

int
FUNC5(
	const sockaddr_u *	psa
	)
{
	isc_netaddr_t	isc_na;
	isc_sockaddr_t	isc_sa;
	u_int		pfxlen;
	isc_result_t	result;
	int		rc;

	FUNC0(isc_sa);
	FUNC3(&isc_sa.type, psa,
	       FUNC4(sizeof(isc_sa.type), sizeof(*psa)));
	FUNC1(&isc_na, &isc_sa);
	result = FUNC2(&isc_na, &pfxlen);
	rc = (ISC_R_SUCCESS == result)
		 ? (int)pfxlen
		 : -1;

	return rc;
}