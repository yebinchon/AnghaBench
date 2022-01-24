#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* zc_name; scalar_t__ zc_nvlist_conf_size; scalar_t__ zc_nvlist_src_size; int /*<<< orphan*/  zc_iflags; int /*<<< orphan*/  zc_nvlist_src; int /*<<< orphan*/  zc_nvlist_conf; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  ZPOOL_PROP_TNAME ; 
 int /*<<< orphan*/  ZPOOL_PROP_VERSION ; 
 int /*<<< orphan*/  ZPOOL_ROOTFS_PROPS ; 
 int /*<<< orphan*/  ZPROP_SRC_LOCAL ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC14 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(zfs_cmd_t *zc)
{
	int error;
	nvlist_t *config, *props = NULL;
	nvlist_t *rootprops = NULL;
	nvlist_t *zplprops = NULL;
	char *spa_name = zc->zc_name;

	if ((error = FUNC3(zc->zc_nvlist_conf, zc->zc_nvlist_conf_size,
	    zc->zc_iflags, &config)))
		return (error);

	if (zc->zc_nvlist_src_size != 0 && (error =
	    FUNC3(zc->zc_nvlist_src, zc->zc_nvlist_src_size,
	    zc->zc_iflags, &props))) {
		FUNC6(config);
		return (error);
	}

	if (props) {
		nvlist_t *nvl = NULL;
		uint64_t version = SPA_VERSION;
		char *tname;

		(void) FUNC9(props,
		    FUNC15(ZPOOL_PROP_VERSION), &version);
		if (!FUNC1(version)) {
			error = FUNC0(EINVAL);
			goto pool_props_bad;
		}
		(void) FUNC7(props, ZPOOL_ROOTFS_PROPS, &nvl);
		if (nvl) {
			error = FUNC5(nvl, &rootprops, KM_SLEEP);
			if (error != 0) {
				FUNC6(config);
				FUNC6(props);
				return (error);
			}
			(void) FUNC10(props, ZPOOL_ROOTFS_PROPS);
		}
		FUNC2(FUNC4(&zplprops, NV_UNIQUE_NAME, KM_SLEEP) == 0);
		error = FUNC13(version, rootprops,
		    zplprops, NULL);
		if (error != 0)
			goto pool_props_bad;

		if (FUNC8(props,
		    FUNC15(ZPOOL_PROP_TNAME), &tname) == 0)
			spa_name = tname;
	}

	error = FUNC11(zc->zc_name, config, props, zplprops);

	/*
	 * Set the remaining root properties
	 */
	if (!error && (error = FUNC14(spa_name,
	    ZPROP_SRC_LOCAL, rootprops, NULL)) != 0)
		(void) FUNC12(spa_name);

pool_props_bad:
	FUNC6(rootprops);
	FUNC6(zplprops);
	FUNC6(config);
	FUNC6(props);

	return (error);
}