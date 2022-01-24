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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  machname ;
typedef  int /*<<< orphan*/  gid_t ;
typedef  int /*<<< orphan*/  AUTH ;

/* Variables and functions */
 int /*<<< orphan*/  MAXHOSTNAMELEN ; 
 int NGRPS ; 
 int /*<<< orphan*/  _SC_NGROUPS_MAX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (long,int /*<<< orphan*/ *) ; 
 int FUNC6 (char*,int) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

AUTH *
FUNC9(void)
{
	AUTH *auth;
	int ngids;
	long ngids_max;
	char machname[MAXHOSTNAMELEN + 1];
	uid_t uid;
	gid_t gid;
	gid_t *gids;

	ngids_max = FUNC8(_SC_NGROUPS_MAX) + 1;
	gids = FUNC7(sizeof(gid_t) * ngids_max);
	if (gids == NULL)
		return (NULL);

	if (FUNC6(machname, sizeof machname) == -1)
		FUNC0();
	machname[sizeof(machname) - 1] = 0;
	uid = FUNC4();
	gid = FUNC3();
	if ((ngids = FUNC5(ngids_max, gids)) < 0)
		FUNC0();
	if (ngids > NGRPS)
		ngids = NGRPS;
	/* XXX: interface problem; we should translate from uid_t and gid_t */
	auth = FUNC1(machname, uid, gid, ngids, gids);
	FUNC2(gids);
	return (auth);
}