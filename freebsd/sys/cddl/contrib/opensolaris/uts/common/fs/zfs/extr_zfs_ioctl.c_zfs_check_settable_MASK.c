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
typedef  int zfs_prop_t ;
typedef  size_t uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  spa_feature_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_2__ {int ci_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ DATA_TYPE_NVLIST ; 
 scalar_t__ DATA_TYPE_UINT64 ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_FEATURE_LARGE_BLOCKS ; 
 int /*<<< orphan*/  SPA_FEATURE_LARGE_DNODE ; 
 int /*<<< orphan*/  SPA_FEATURE_LZ4_COMPRESS ; 
 int /*<<< orphan*/  SPA_FEATURE_NONE ; 
 size_t SPA_MAXBLOCKSIZE ; 
 size_t SPA_OLD_MAXBLOCKSIZE ; 
 int /*<<< orphan*/  SPA_VERSION_DEDUP ; 
 int /*<<< orphan*/  SPA_VERSION_DITTO_BLOCKS ; 
 int /*<<< orphan*/  SPA_VERSION_GZIP_COMPRESSION ; 
 int /*<<< orphan*/  SPA_VERSION_PASSTHROUGH_X ; 
 int /*<<< orphan*/  SPA_VERSION_ZLE_COMPRESSION ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int ZCHECKSUM_FLAG_SALTED ; 
 size_t ZFS_ACL_PASSTHROUGH_X ; 
 char* ZFS_DELEG_PERM_GROUPQUOTA ; 
 char const* ZFS_DELEG_PERM_USERPROP ; 
 char* ZFS_DELEG_PERM_USERQUOTA ; 
 size_t ZFS_DNSIZE_LEGACY ; 
#define  ZFS_PROP_ACLINHERIT 135 
#define  ZFS_PROP_CHECKSUM 134 
#define  ZFS_PROP_COMPRESSION 133 
#define  ZFS_PROP_COPIES 132 
#define  ZFS_PROP_DEDUP 131 
#define  ZFS_PROP_DNODESIZE 130 
 size_t ZFS_PROP_GROUPQUOTA ; 
#define  ZFS_PROP_RECORDSIZE 129 
#define  ZFS_PROP_SHARESMB 128 
 size_t ZFS_PROP_USERQUOTA ; 
 size_t ZIO_CHECKSUM_FUNCTIONS ; 
 size_t ZIO_CHECKSUM_MASK ; 
 size_t ZIO_COMPRESS_GZIP_1 ; 
 size_t ZIO_COMPRESS_GZIP_9 ; 
 size_t ZIO_COMPRESS_LZ4 ; 
 size_t ZIO_COMPRESS_ZLE ; 
 int /*<<< orphan*/  ZPL_VERSION_FUID ; 
 int ZPROP_INVAL ; 
 int /*<<< orphan*/  ZPROP_VALUE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (char const*,char) ; 
 int /*<<< orphan*/  FUNC14 (char const*) ; 
 scalar_t__ FUNC15 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char const*) ; 
 size_t zfs_max_recordsize ; 
 int FUNC18 (char const*) ; 
 scalar_t__ FUNC19 (char const*) ; 
 scalar_t__ FUNC20 (char const*) ; 
 int FUNC21 (char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC22 (char const*,char const*,int /*<<< orphan*/ *) ; 
 char** zfs_userquota_prop_prefixes ; 
 TYPE_1__* zio_checksum_table ; 
 int /*<<< orphan*/  FUNC23 (size_t) ; 
 int /*<<< orphan*/  FUNC24 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC25(const char *dsname, nvpair_t *pair, cred_t *cr)
{
	const char *propname = FUNC5(pair);
	boolean_t issnap = (FUNC13(dsname, '@') != NULL);
	zfs_prop_t prop = FUNC18(propname);
	uint64_t intval;
	int err;

	if (prop == ZPROP_INVAL) {
		if (FUNC19(propname)) {
			if ((err = FUNC22(dsname,
			    ZFS_DELEG_PERM_USERPROP, cr)))
				return (err);
			return (0);
		}

		if (!issnap && FUNC20(propname)) {
			const char *perm = NULL;
			const char *uq_prefix =
			    zfs_userquota_prop_prefixes[ZFS_PROP_USERQUOTA];
			const char *gq_prefix =
			    zfs_userquota_prop_prefixes[ZFS_PROP_GROUPQUOTA];

			if (FUNC15(propname, uq_prefix,
			    FUNC14(uq_prefix)) == 0) {
				perm = ZFS_DELEG_PERM_USERQUOTA;
			} else if (FUNC15(propname, gq_prefix,
			    FUNC14(gq_prefix)) == 0) {
				perm = ZFS_DELEG_PERM_GROUPQUOTA;
			} else {
				/* USERUSED and GROUPUSED are read-only */
				return (FUNC2(EINVAL));
			}

			if ((err = FUNC22(dsname, perm, cr)))
				return (err);
			return (0);
		}

		return (FUNC2(EINVAL));
	}

	if (issnap)
		return (FUNC2(EINVAL));

	if (FUNC6(pair) == DATA_TYPE_NVLIST) {
		/*
		 * dsl_prop_get_all_impl() returns properties in this
		 * format.
		 */
		nvlist_t *attrs;
		FUNC3(FUNC7(pair, &attrs) == 0);
		FUNC3(FUNC4(attrs, ZPROP_VALUE,
		    &pair) == 0);
	}

	/*
	 * Check that this value is valid for this pool version
	 */
	switch (prop) {
	case ZFS_PROP_COMPRESSION:
		/*
		 * If the user specified gzip compression, make sure
		 * the SPA supports it. We ignore any errors here since
		 * we'll catch them later.
		 */
		if (FUNC8(pair, &intval) == 0) {
			if (intval >= ZIO_COMPRESS_GZIP_1 &&
			    intval <= ZIO_COMPRESS_GZIP_9 &&
			    FUNC16(dsname,
			    SPA_VERSION_GZIP_COMPRESSION)) {
				return (FUNC2(ENOTSUP));
			}

			if (intval == ZIO_COMPRESS_ZLE &&
			    FUNC16(dsname,
			    SPA_VERSION_ZLE_COMPRESSION))
				return (FUNC2(ENOTSUP));

			if (intval == ZIO_COMPRESS_LZ4) {
				spa_t *spa;

				if ((err = FUNC12(dsname, &spa, FTAG)) != 0)
					return (err);

				if (!FUNC11(spa,
				    SPA_FEATURE_LZ4_COMPRESS)) {
					FUNC10(spa, FTAG);
					return (FUNC2(ENOTSUP));
				}
				FUNC10(spa, FTAG);
			}

			/*
			 * If this is a bootable dataset then
			 * verify that the compression algorithm
			 * is supported for booting. We must return
			 * something other than ENOTSUP since it
			 * implies a downrev pool version.
			 */
			if (FUNC17(dsname) &&
			    !FUNC0(intval)) {
				return (FUNC2(ERANGE));
			}
		}
		break;

	case ZFS_PROP_COPIES:
		if (FUNC16(dsname, SPA_VERSION_DITTO_BLOCKS))
			return (FUNC2(ENOTSUP));
		break;

	case ZFS_PROP_RECORDSIZE:
		/* Record sizes above 128k need the feature to be enabled */
		if (FUNC8(pair, &intval) == 0 &&
		    intval > SPA_OLD_MAXBLOCKSIZE) {
			spa_t *spa;

			/*
			 * We don't allow setting the property above 1MB,
			 * unless the tunable has been changed.
			 */
			if (intval > zfs_max_recordsize ||
			    intval > SPA_MAXBLOCKSIZE)
				return (FUNC2(ERANGE));

			if ((err = FUNC12(dsname, &spa, FTAG)) != 0)
				return (err);

			if (!FUNC11(spa,
			    SPA_FEATURE_LARGE_BLOCKS)) {
				FUNC10(spa, FTAG);
				return (FUNC2(ENOTSUP));
			}
			FUNC10(spa, FTAG);
		}
		break;

	case ZFS_PROP_DNODESIZE:
		/* Dnode sizes above 512 need the feature to be enabled */
		if (FUNC8(pair, &intval) == 0 &&
		    intval != ZFS_DNSIZE_LEGACY) {
			spa_t *spa;

			if ((err = FUNC12(dsname, &spa, FTAG)) != 0)
				return (err);

			if (!FUNC11(spa,
			    SPA_FEATURE_LARGE_DNODE)) {
				FUNC10(spa, FTAG);
				return (FUNC2(ENOTSUP));
			}
			FUNC10(spa, FTAG);
		}
		break;

	case ZFS_PROP_SHARESMB:
		if (FUNC24(dsname, ZPL_VERSION_FUID))
			return (FUNC2(ENOTSUP));
		break;

	case ZFS_PROP_ACLINHERIT:
		if (FUNC6(pair) == DATA_TYPE_UINT64 &&
		    FUNC8(pair, &intval) == 0) {
			if (intval == ZFS_ACL_PASSTHROUGH_X &&
			    FUNC16(dsname,
			    SPA_VERSION_PASSTHROUGH_X))
				return (FUNC2(ENOTSUP));
		}
		break;

	case ZFS_PROP_CHECKSUM:
	case ZFS_PROP_DEDUP:
	{
		spa_feature_t feature;
		spa_t *spa;

		/* dedup feature version checks */
		if (prop == ZFS_PROP_DEDUP &&
		    FUNC16(dsname, SPA_VERSION_DEDUP))
			return (FUNC2(ENOTSUP));

		if (FUNC8(pair, &intval) != 0)
			return (FUNC2(EINVAL));

		/* check prop value is enabled in features */
		feature = FUNC23(intval & ZIO_CHECKSUM_MASK);
		if (feature == SPA_FEATURE_NONE)
			break;

		if ((err = FUNC12(dsname, &spa, FTAG)) != 0)
			return (err);
		/*
		 * Salted checksums are not supported on root pools.
		 */
		if (FUNC9(spa) != 0 &&
		    intval < ZIO_CHECKSUM_FUNCTIONS &&
		    (zio_checksum_table[intval].ci_flags &
		    ZCHECKSUM_FLAG_SALTED)) {
			FUNC10(spa, FTAG);
			return (FUNC2(ERANGE));
		}
		if (!FUNC11(spa, feature)) {
			FUNC10(spa, FTAG);
			return (FUNC2(ENOTSUP));
		}
		FUNC10(spa, FTAG);
		break;
	}
	}

	return (FUNC21(dsname, prop, pair, FUNC1()));
}