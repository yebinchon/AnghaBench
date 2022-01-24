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
typedef  int /*<<< orphan*/  xdrproc_t ;
typedef  int /*<<< orphan*/  u_int ;
struct authunix_parms {int /*<<< orphan*/  aup_len; int /*<<< orphan*/  aup_gid; int /*<<< orphan*/  aup_uid; int /*<<< orphan*/  aup_machname; int /*<<< orphan*/  aup_time; int /*<<< orphan*/ * aup_gids; } ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MAX_MACHINE_NAME ; 
 int /*<<< orphan*/  NGRPS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool_t
FUNC5(XDR *xdrs, struct authunix_parms *p)
{
	u_int **paup_gids;

	FUNC0(xdrs != NULL);
	FUNC0(p != NULL);

	paup_gids = &p->aup_gids;

	if (FUNC4(xdrs, &(p->aup_time)) &&
	    FUNC2(xdrs, &(p->aup_machname), MAX_MACHINE_NAME) &&
	    FUNC3(xdrs, &(p->aup_uid)) &&
	    FUNC3(xdrs, &(p->aup_gid)) &&
	    FUNC1(xdrs, (char **) paup_gids,
	    &(p->aup_len), NGRPS, sizeof(u_int), (xdrproc_t)xdr_u_int) ) {
		return (TRUE);
	}
	return (FALSE);
}