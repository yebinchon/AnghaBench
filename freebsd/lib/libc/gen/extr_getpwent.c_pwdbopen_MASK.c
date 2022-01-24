#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int (* get ) (TYPE_2__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* close ) (TYPE_2__*) ;} ;
struct TYPE_9__ {scalar_t__ data; int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ DBT ;
typedef  TYPE_2__ DB ;

/* Variables and functions */
 int /*<<< orphan*/  DB_HASH ; 
 int /*<<< orphan*/  LOG_CRIT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  _PATH_MP_DB ; 
 int /*<<< orphan*/  _PATH_SMP_DB ; 
 scalar_t__ _PWD_VERSION_KEY ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pwdb_versions ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (TYPE_2__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static DB *
FUNC7(int *version)
{
	DB	*res;
	DBT	 key, entry;
	int	 rv;

	if (FUNC1() != 0 ||
	    (res = FUNC0(_PATH_SMP_DB, O_RDONLY, 0, DB_HASH, NULL)) == NULL)
		res = FUNC0(_PATH_MP_DB, O_RDONLY, 0, DB_HASH, NULL);
	if (res == NULL)
		return (NULL);
	key.data = _PWD_VERSION_KEY;
	key.size = FUNC3(_PWD_VERSION_KEY);
	rv = res->get(res, &key, &entry, 0);
	if (rv == 0)
		*version = *(unsigned char *)entry.data;
	else
		*version = 3;
	if (*version < 3 ||
	    *version >= FUNC2(pwdb_versions)) {
		FUNC6(LOG_CRIT, "Unsupported password database version %d",
		    *version);
		res->close(res);
		res = NULL;
	}
	return (res);
}