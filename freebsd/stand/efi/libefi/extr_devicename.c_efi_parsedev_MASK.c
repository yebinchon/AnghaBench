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
struct zfs_devdesc {int dummy; } ;
struct disk_devdesc {int dummy; } ;
struct devsw {char const* dv_name; int dv_type; } ;
struct devdesc {int d_unit; struct devsw* d_dev; } ;

/* Variables and functions */
#define  DEVT_DISK 130 
#define  DEVT_NONE 129 
#define  DEVT_ZFS 128 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EUNIT ; 
 struct devsw** devsw ; 
 int FUNC0 (struct disk_devdesc*,char const*,char const**) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (struct devdesc*) ; 
 struct devdesc* FUNC2 (int) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,int) ; 
 int FUNC5 (char const*,char**,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct zfs_devdesc*,char const*,char const**) ; 

__attribute__((used)) static int
FUNC7(struct devdesc **dev, const char *devspec, const char **path)
{
	struct devdesc *idev;
	struct devsw *dv;
	int i, unit, err;
	char *cp;
	const char *np;

	/* minimum length check */
	if (FUNC3(devspec) < 2)
		return (EINVAL);

	/* look for a device that matches */
	for (i = 0; devsw[i] != NULL; i++) {
		dv = devsw[i];
		if (!FUNC4(devspec, dv->dv_name, FUNC3(dv->dv_name)))
			break;
	}
	if (devsw[i] == NULL)
		return (ENOENT);

	np = devspec + FUNC3(dv->dv_name);
	idev = NULL;
	err = 0;

	switch (dv->dv_type) {
	case DEVT_NONE:
		break;

	case DEVT_DISK:
		idev = FUNC2(sizeof(struct disk_devdesc));
		if (idev == NULL)
			return (ENOMEM);

		err = FUNC0((struct disk_devdesc *)idev, np, path);
		if (err != 0)
			goto fail;
		break;

#ifdef EFI_ZFS_BOOT
	case DEVT_ZFS:
		idev = malloc(sizeof(struct zfs_devdesc));
		if (idev == NULL)
			return (ENOMEM);

		err = zfs_parsedev((struct zfs_devdesc*)idev, np, path);
		if (err != 0)
			goto fail;
		break;
#endif
	default:
		idev = FUNC2(sizeof(struct devdesc));
		if (idev == NULL)
			return (ENOMEM);

		unit = 0;
		cp = (char *)np;

		if (*np != '\0' && *np != ':') {
			errno = 0;
			unit = FUNC5(np, &cp, 0);
			if (errno != 0 || cp == np) {
				err = EUNIT;
				goto fail;
			}
		}
		if (*cp != '\0' && *cp != ':') {
			err = EINVAL;
			goto fail;
		}

		idev->d_unit = unit;
		if (path != NULL)
			*path = (*cp == 0) ? cp : cp + 1;
		break;
	}

	idev->d_dev = dv;

	if (dev != NULL)
		*dev = idev;
	else
		FUNC1(idev);
	return (0);

fail:
	FUNC1(idev);
	return (err);
}