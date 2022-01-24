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
struct gmesh {int dummy; } ;
typedef  int /*<<< orphan*/ * const_efidp ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int EDOOFUS ; 
 int EINVAL ; 
 scalar_t__ END_DEVICE_PATH_TYPE ; 
 int ENOMEM ; 
 uintptr_t MAX_DP_SANITY ; 
 scalar_t__ MEDIA_DEVICE_PATH ; 
 scalar_t__ MEDIA_HARDDRIVE_DP ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct gmesh*,int /*<<< orphan*/ *,char**,char**,char**) ; 
 int FUNC4 (struct gmesh*,int /*<<< orphan*/ *,char**,char**,char**) ; 
 int FUNC5 (struct gmesh*,int /*<<< orphan*/ *,char**,char**,char**) ; 
 int FUNC6 (struct gmesh*,int /*<<< orphan*/ *,char**,char**,char**) ; 
 int /*<<< orphan*/  FUNC7 (struct gmesh*) ; 
 scalar_t__ FUNC8 (struct gmesh*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

int
FUNC12(const_efidp dp, char **dev, char **relpath, char **abspath)
{
	const_efidp walker;
	struct gmesh mesh;
	int rv = 0;

	/*
	 * Sanity check args, fail early
	 */
	if (dp == NULL || dev == NULL || relpath == NULL || abspath == NULL)
		return (EDOOFUS);

	*dev = NULL;
	*relpath = NULL;
	*abspath = NULL;

	/*
	 * Find the first media device path we can. If we go too far,
	 * assume the passed in device path is bogus. If we hit the end
	 * then we didn't find a media device path, so signal that error.
	 */
	walker = dp;
	while (FUNC1(walker) != MEDIA_DEVICE_PATH &&
	    FUNC1(walker) != END_DEVICE_PATH_TYPE) {
		walker = (const_efidp)FUNC2(walker);
		if ((uintptr_t)walker - (uintptr_t)dp > MAX_DP_SANITY)
			return (EINVAL);
	}
	if (FUNC1(walker) !=  MEDIA_DEVICE_PATH)
		return (EINVAL);

	/*
	 * There's several types of media paths. We're only interested in the
	 * hard disk path, as it's really the only relevant one to booting. The
	 * CD path just might also be relevant, and would be easy to add, but
	 * isn't supported. A file path too is relevant, but at this stage, it's
	 * premature because we're trying to translate a specification for a device
	 * and path on that device into a unix path, or at the very least, a
	 * geom device : path-on-device.
	 *
	 * Also, ZFS throws a bit of a monkey wrench in here since it doesn't have
	 * a device path type (it creates a new virtual device out of one or more
	 * storage devices).
	 *
	 * For all of them, we'll need to know the geoms, so allocate / free the
	 * geom mesh here since it's safer than doing it in each sub-function
	 * which may have many error exits.
	 */
	if (FUNC8(&mesh))
		return (ENOMEM);

	rv = EINVAL;
	if (FUNC0(walker) == MEDIA_HARDDRIVE_DP)
		rv = FUNC5(&mesh, walker, dev, relpath, abspath);
#ifdef notyet
	else if (is_cdrom_device(walker))
		rv = efi_cdrom_to_unix(&mesh, walker, dev, relpath, abspath);
	else if (is_floppy_device(walker))
		rv = efi_floppy_to_unix(&mesh, walker, dev, relpath, abspath);
	else if (is_zpool_device(walker))
		rv = efi_zpool_to_unix(&mesh, walker, dev, relpath, abspath);
#endif
	FUNC7(&mesh);

	return (rv);
}