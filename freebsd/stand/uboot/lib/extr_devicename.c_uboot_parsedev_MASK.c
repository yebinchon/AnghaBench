#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int d_unit; struct devsw* d_dev; } ;
struct uboot_devdesc {TYPE_1__ dd; } ;
struct disk_devdesc {int dummy; } ;
struct devsw {char const* dv_name; int dv_type; } ;

/* Variables and functions */
#define  DEVT_DISK 130 
#define  DEVT_NET 129 
#define  DEVT_NONE 128 
 int EINVAL ; 
 int ENOENT ; 
 int EUNIT ; 
 struct devsw** devsw ; 
 int FUNC0 (struct disk_devdesc*,char const*,char const**) ; 
 int /*<<< orphan*/  FUNC1 (struct uboot_devdesc*) ; 
 struct uboot_devdesc* FUNC2 (int) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,int) ; 
 int FUNC5 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct uboot_devdesc **dev, const char *devspec,
    const char **path)
{
	struct uboot_devdesc *idev;
	struct devsw *dv;
	char *cp;
	const char *np;
	int i, unit, err;

	/* minimum length check */
	if (FUNC3(devspec) < 2)
		return(EINVAL);

	/* look for a device that matches */
	for (i = 0, dv = NULL; devsw[i] != NULL; i++) {
		if (!FUNC4(devspec, devsw[i]->dv_name,
		    FUNC3(devsw[i]->dv_name))) {
			dv = devsw[i];
			break;
		}
	}
	if (dv == NULL)
		return(ENOENT);
	idev = FUNC2(sizeof(struct uboot_devdesc));
	err = 0;
	np = (devspec + FUNC3(dv->dv_name));

	switch(dv->dv_type) {
	case DEVT_NONE:
		break;

#ifdef LOADER_DISK_SUPPORT
	case DEVT_DISK:
		err = disk_parsedev((struct disk_devdesc *)idev, np, path);
		if (err != 0)
			goto fail;
		break;
#endif

	case DEVT_NET:
		unit = 0;

		if (*np && (*np != ':')) {
			/* get unit number if present */
			unit = FUNC5(np, &cp, 0);
			if (cp == np) {
				err = EUNIT;
				goto fail;
			}
		}
		if (*cp && (*cp != ':')) {
			err = EINVAL;
			goto fail;
		}
		idev->dd.d_unit = unit;

		if (path != NULL)
			*path = (*cp == 0) ? cp : cp + 1;
		break;

	default:
		err = EINVAL;
		goto fail;
	}
	idev->dd.d_dev = dv;
	if (dev == NULL) {
		FUNC1(idev);
	} else {
		*dev = idev;
	}
	return (0);

fail:
	FUNC1(idev);
	return (err);
}