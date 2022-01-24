#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct hostent_data {int dummy; } ;
struct hostent {int dummy; } ;
typedef  TYPE_1__* res_state ;
struct TYPE_6__ {int options; int res_h_errno; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETDB_INTERNAL ; 
 int RES_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int RES_USE_INET6 ; 
 scalar_t__ FUNC1 (struct hostent*,struct hostent*,char*,size_t) ; 
 struct hostent_data* FUNC2 () ; 
 TYPE_1__* FUNC3 () ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC4 (struct hostent*,struct hostent_data*,int,TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 

int
FUNC6(struct hostent *hptr, char *buffer, size_t buflen,
    struct hostent **result, int *h_errnop)
{
	struct hostent_data *hed;
	struct hostent he;
	res_state statp;

	statp = FUNC3();
	if ((statp->options & RES_INIT) == 0 && FUNC5(statp) == -1) {
		FUNC0(statp, NETDB_INTERNAL);
		*h_errnop = statp->res_h_errno;
		return (-1);
	}
	if ((hed = FUNC2()) == NULL) {
		FUNC0(statp, NETDB_INTERNAL);
		*h_errnop = statp->res_h_errno;
		return (-1);
	}
	if (FUNC4(&he, hed, statp->options & RES_USE_INET6, statp) != 0)
		return (-1);
	if (FUNC1(&he, hptr, buffer, buflen) != 0) {
		FUNC0(statp, NETDB_INTERNAL);
		*h_errnop = statp->res_h_errno;
		return ((errno != 0) ? errno : -1);
	}
	*result = hptr;
	return (0);
}