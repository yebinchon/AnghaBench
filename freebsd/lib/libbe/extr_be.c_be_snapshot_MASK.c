#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  lzh; } ;
typedef  TYPE_1__ libbe_handle_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int BE_ERR_INVALIDNAME ; 
 int BE_ERR_NOPOOL ; 
 int BE_ERR_SUCCESS ; 
 int BE_ERR_UNKNOWN ; 
 int BE_MAXPATHLEN ; 
 int /*<<< orphan*/  ENOTSUP ; 
#define  EZFS_INVALIDNAME 128 
 int FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*,char const*) ; 
 int FUNC5 (char*,char const*,int) ; 
 int FUNC6 (char*,scalar_t__,int) ; 
 scalar_t__ FUNC7 (char*,char) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 

int
FUNC9(libbe_handle_t *lbh, const char *source, const char *snap_name,
    bool recursive, char *result)
{
	char buf[BE_MAXPATHLEN];
	int err;

	FUNC1(lbh, source, buf);

	if ((err = FUNC0(lbh, buf)) != 0)
		return (FUNC3(lbh, err));

	if (snap_name != NULL) {
		if (FUNC5(buf, "@", sizeof(buf)) >= sizeof(buf))
			return (FUNC3(lbh, BE_ERR_INVALIDNAME));

		if (FUNC5(buf, snap_name, sizeof(buf)) >= sizeof(buf))
			return (FUNC3(lbh, BE_ERR_INVALIDNAME));

		if (result != NULL)
			FUNC4(result, BE_MAXPATHLEN, "%s@%s", source,
			    snap_name);
	} else {
		FUNC2(lbh, buf, sizeof(buf));

		if (result != NULL && FUNC6(result, FUNC7(buf, '/') + 1,
		    sizeof(buf)) >= sizeof(buf))
			return (FUNC3(lbh, BE_ERR_INVALIDNAME));
	}
	if ((err = FUNC8(lbh->lzh, buf, recursive, NULL)) != 0) {
		switch (err) {
		case EZFS_INVALIDNAME:
			return (FUNC3(lbh, BE_ERR_INVALIDNAME));

		default:
			/*
			 * The other errors that zfs_ioc_snapshot might return
			 * shouldn't happen if we've set things up properly, so
			 * we'll gloss over them and call it UNKNOWN as it will
			 * require further triage.
			 */
			if (errno == ENOTSUP)
				return (FUNC3(lbh, BE_ERR_NOPOOL));
			return (FUNC3(lbh, BE_ERR_UNKNOWN));
		}
	}

	return (BE_ERR_SUCCESS);
}