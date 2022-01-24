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
typedef  int u_int ;
typedef  int target_id_t ;
struct periph_driver {char* driver_name; } ;
typedef  int /*<<< orphan*/  pathbuf ;
typedef  int path_id_t ;
typedef  int lun_id_t ;

/* Variables and functions */
 int FUNC0 (struct periph_driver*,int,int,int,int,int) ; 
 scalar_t__ FUNC1 (int*,char const*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,int,char*,int*) ; 
 scalar_t__ FUNC3 (char const*,int,char*,char const**) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static u_int
FUNC6(struct periph_driver *p_drv, path_id_t pathid,
	      target_id_t target, lun_id_t lun)
{
	u_int	unit;
	int	wired, i, val, dunit;
	const char *dname, *strval;
	char	pathbuf[32], *periph_name;

	periph_name = p_drv->driver_name;
	FUNC4(pathbuf, sizeof(pathbuf), "scbus%d", pathid);
	unit = 0;
	i = 0;
	dname = periph_name;
	for (wired = 0; FUNC1(&i, dname, &dunit, NULL, NULL) == 0;
	     wired = 0) {
		if (FUNC3(dname, dunit, "at", &strval) == 0) {
			if (FUNC5(strval, pathbuf) != 0)
				continue;
			wired++;
		}
		if (FUNC2(dname, dunit, "target", &val) == 0) {
			if (val != target)
				continue;
			wired++;
		}
		if (FUNC2(dname, dunit, "lun", &val) == 0) {
			if (val != lun)
				continue;
			wired++;
		}
		if (wired != 0) {
			unit = dunit;
			break;
		}
	}

	/*
	 * Either start from 0 looking for the next unit or from
	 * the unit number given in the resource config.  This way,
	 * if we have wildcard matches, we don't return the same
	 * unit number twice.
	 */
	unit = FUNC0(p_drv, unit, wired, pathid, target, lun);

	return (unit);
}