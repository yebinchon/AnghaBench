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
struct netent_data {int dummy; } ;
struct netent {int dummy; } ;
typedef  TYPE_1__* res_state ;
struct TYPE_4__ {int res_h_errno; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETDB_INTERNAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct netent*,struct netent*,char*,size_t) ; 
 struct netent_data* FUNC2 () ; 
 TYPE_1__* FUNC3 () ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC4 (struct netent*,struct netent_data*) ; 

int
FUNC5(struct netent *nptr, char *buffer, size_t buflen,
    struct netent **result, int *h_errnop)
{
	struct netent_data *ned;
	struct netent ne;
	res_state statp;

	statp = FUNC3();
	if ((ned = FUNC2()) == NULL) {
		FUNC0(statp, NETDB_INTERNAL);
		*h_errnop = statp->res_h_errno;
		return (-1);
	}
	if (FUNC4(&ne, ned) != 0)
		return (-1);
	if (FUNC1(&ne, nptr, buffer, buflen) != 0) {
		FUNC0(statp, NETDB_INTERNAL);
		*h_errnop = statp->res_h_errno;
		return ((errno != 0) ? errno : -1);
	}
	*result = nptr;
	return (0);
}