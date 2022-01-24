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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int B_TRUE ; 
 scalar_t__ DMU_OST_ZFS ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  ZFS_PROP_VERSION ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static boolean_t
FUNC4(const char *name, int version)
{
	objset_t *os;
	boolean_t rc = B_TRUE;

	if (FUNC0(name, FTAG, &os) == 0) {
		uint64_t zplversion;

		if (FUNC2(os) != DMU_OST_ZFS) {
			FUNC1(os, FTAG);
			return (B_TRUE);
		}
		/* XXX reading from non-owned objset */
		if (FUNC3(os, ZFS_PROP_VERSION, &zplversion) == 0)
			rc = zplversion < version;
		FUNC1(os, FTAG);
	}
	return (rc);
}