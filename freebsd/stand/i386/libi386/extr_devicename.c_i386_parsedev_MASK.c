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
struct zfs_devdesc {int dummy; } ;
struct TYPE_2__ {int d_unit; struct devsw* d_dev; } ;
struct i386_devdesc {TYPE_1__ dd; } ;
struct disk_devdesc {int dummy; } ;
struct devsw {char const* dv_name; int dv_type; } ;
struct devdesc {int dummy; } ;

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
 int /*<<< orphan*/  FUNC1 (struct i386_devdesc*) ; 
 struct i386_devdesc* FUNC2 (int) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,int) ; 
 int FUNC5 (char const*,char**,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct zfs_devdesc*,char const*,char const**) ; 

__attribute__((used)) static int
FUNC7(struct i386_devdesc **dev, const char *devspec, const char **path)
{
    struct i386_devdesc *idev;
    struct devsw	*dv;
    int			i, unit, err;
    char		*cp;
    const char		*np;

    /* minimum length check */
    if (FUNC3(devspec) < 2)
	return(EINVAL);

    /* look for a device that matches */
    for (i = 0, dv = NULL; devsw[i] != NULL; i++) {
	if (!FUNC4(devspec, devsw[i]->dv_name, FUNC3(devsw[i]->dv_name))) {
	    dv = devsw[i];
	    break;
	}
    }
    if (dv == NULL)
	return(ENOENT);

    np = (devspec + FUNC3(dv->dv_name));
    idev = NULL;
    err = 0;
        
    switch(dv->dv_type) {
    case DEVT_NONE:
	break;

    case DEVT_DISK:
	idev = FUNC2(sizeof(struct i386_devdesc));
	if (idev == NULL)
	    return (ENOMEM);

	err = FUNC0((struct disk_devdesc *)idev, np, path);
	if (err != 0)
	    goto fail;
	break;

    case DEVT_ZFS:
	idev = FUNC2(sizeof (struct zfs_devdesc));
	if (idev == NULL)
	    return (ENOMEM);

	err = FUNC6((struct zfs_devdesc *)idev, np, path);
	if (err != 0)
	    goto fail;
	break;

    default:
	idev = FUNC2(sizeof (struct devdesc));
	if (idev == NULL)
	    return (ENOMEM);

	unit = 0;
	cp = (char *)np;

	if (*np && (*np != ':')) {
	    unit = FUNC5(np, &cp, 0);	/* get unit number if present */
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
    }
    idev->dd.d_dev = dv;
    if (dev != NULL)
	*dev = idev;
    else
	FUNC1(idev);

    return(0);

 fail:
    FUNC1(idev);
    return(err);
}