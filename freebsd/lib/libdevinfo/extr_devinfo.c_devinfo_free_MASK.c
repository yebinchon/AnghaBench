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
struct devinfo_i_rman {struct devinfo_i_rman* dd_location; struct devinfo_i_rman* dd_pnpinfo; struct devinfo_i_rman* dd_drivername; struct devinfo_i_rman* dd_desc; struct devinfo_i_rman* dd_name; } ;
struct devinfo_i_res {struct devinfo_i_res* dd_location; struct devinfo_i_res* dd_pnpinfo; struct devinfo_i_res* dd_drivername; struct devinfo_i_res* dd_desc; struct devinfo_i_res* dd_name; } ;
struct devinfo_i_dev {struct devinfo_i_dev* dd_location; struct devinfo_i_dev* dd_pnpinfo; struct devinfo_i_dev* dd_drivername; struct devinfo_i_dev* dd_desc; struct devinfo_i_dev* dd_name; } ;

/* Variables and functions */
 struct devinfo_i_rman* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct devinfo_i_rman*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dd_link ; 
 int /*<<< orphan*/  devinfo_dev ; 
 scalar_t__ devinfo_generation ; 
 scalar_t__ devinfo_initted ; 
 int /*<<< orphan*/  devinfo_res ; 
 int /*<<< orphan*/  devinfo_rman ; 
 int /*<<< orphan*/  dm_link ; 
 int /*<<< orphan*/  dr_link ; 
 int /*<<< orphan*/  FUNC2 (struct devinfo_i_rman*) ; 

void
FUNC3(void)
{
	struct devinfo_i_dev	*dd;
	struct devinfo_i_rman	*dm;
	struct devinfo_i_res	*dr;

	while ((dd = FUNC0(&devinfo_dev)) != NULL) {
		FUNC1(&devinfo_dev, dd, dd_link);
		FUNC2(dd->dd_name);
		FUNC2(dd->dd_desc);
		FUNC2(dd->dd_drivername);
		FUNC2(dd->dd_pnpinfo);
		FUNC2(dd->dd_location);
		FUNC2(dd);
	}
	while ((dm = FUNC0(&devinfo_rman)) != NULL) {
		FUNC1(&devinfo_rman, dm, dm_link);
		FUNC2(dm);
	}
	while ((dr = FUNC0(&devinfo_res)) != NULL) {
		FUNC1(&devinfo_res, dr, dr_link);
		FUNC2(dr);
	}
	devinfo_initted = 0;
	devinfo_generation = 0;
}