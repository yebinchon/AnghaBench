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
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* ZCP_ARG_ARGLIST ; 
 int /*<<< orphan*/  ZCP_RET_ERROR ; 
 int /*<<< orphan*/  ZCP_RET_RETURN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  zfs_lua_max_memlimit ; 

int
FUNC14(nvlist_t *snaps, boolean_t defer,
    nvlist_t *errlist)
{
	if (FUNC10(snaps, NULL) == NULL)
		return (0);

	/*
	 * lzc_destroy_snaps() is documented to take an nvlist whose
	 * values "don't matter".  We need to convert that nvlist to
	 * one that we know can be converted to LUA. We also don't
	 * care about any duplicate entries because the nvlist will
	 * be converted to a LUA table which should take care of this.
	 */
	nvlist_t *snaps_normalized;
	FUNC0(FUNC8(&snaps_normalized, 0, KM_SLEEP));
	for (nvpair_t *pair = FUNC10(snaps, NULL);
	    pair != NULL; pair = FUNC10(snaps, pair)) {
		FUNC1(snaps_normalized,
		    FUNC11(pair), B_TRUE);
	}

	nvlist_t *arg;
	FUNC0(FUNC8(&arg, 0, KM_SLEEP));
	FUNC3(arg, "snaps", snaps_normalized);
	FUNC5(snaps_normalized);
	FUNC1(arg, "defer", defer);

	nvlist_t *wrapper;
	FUNC0(FUNC8(&wrapper, 0, KM_SLEEP));
	FUNC3(wrapper, ZCP_ARG_ARGLIST, arg);
	FUNC5(arg);

	const char *program =
	    "arg = ...\n"
	    "snaps = arg['snaps']\n"
	    "defer = arg['defer']\n"
	    "errors = { }\n"
	    "has_errors = false\n"
	    "for snap, v in pairs(snaps) do\n"
	    "    errno = zfs.check.destroy{snap, defer=defer}\n"
	    "    zfs.debug('snap: ' .. snap .. ' errno: ' .. errno)\n"
	    "    if errno == ENOENT then\n"
	    "        snaps[snap] = nil\n"
	    "    elseif errno ~= 0 then\n"
	    "        errors[snap] = errno\n"
	    "        has_errors = true\n"
	    "    end\n"
	    "end\n"
	    "if has_errors then\n"
	    "    return errors\n"
	    "end\n"
	    "for snap, v in pairs(snaps) do\n"
	    "    errno = zfs.sync.destroy{snap, defer=defer}\n"
	    "    assert(errno == 0)\n"
	    "end\n"
	    "return { }\n";

	nvlist_t *result = FUNC4();
	int error = FUNC12(FUNC11(FUNC10(snaps, NULL)),
	    program,
	    B_TRUE,
	    0,
	    zfs_lua_max_memlimit,
	    FUNC10(wrapper, NULL), result);
	if (error != 0) {
		char *errorstr = NULL;
		(void) FUNC9(result, ZCP_RET_ERROR, &errorstr);
		if (errorstr != NULL) {
			FUNC13(errorstr);
		}
		return (error);
	}
	FUNC5(wrapper);

	/*
	 * lzc_destroy_snaps() is documented to fill the errlist with
	 * int32 values, so we need to covert the int64 values that are
	 * returned from LUA.
	 */
	int rv = 0;
	nvlist_t *errlist_raw = FUNC6(result, ZCP_RET_RETURN);
	for (nvpair_t *pair = FUNC10(errlist_raw, NULL);
	    pair != NULL; pair = FUNC10(errlist_raw, pair)) {
		int32_t val = (int32_t)FUNC7(pair);
		if (rv == 0)
			rv = val;
		FUNC2(errlist, FUNC11(pair), val);
	}
	FUNC5(result);
	return (rv);
}