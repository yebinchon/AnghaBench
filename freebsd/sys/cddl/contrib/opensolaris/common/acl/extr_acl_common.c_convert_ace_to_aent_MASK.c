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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  gid_t ;
typedef  int /*<<< orphan*/  boolean_t ;
typedef  int /*<<< orphan*/  aclent_t ;
typedef  int /*<<< orphan*/  ace_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC4(ace_t *acebufp, int acecnt, boolean_t isdir,
    uid_t owner, gid_t group, aclent_t **retaclentp, int *retaclcnt)
{
	int error = 0;
	aclent_t *aclentp, *dfaclentp;
	int aclcnt, dfaclcnt;
	int aclsz, dfaclsz;

	error = FUNC2(acebufp, acecnt, owner, group,
	    &aclentp, &aclcnt, &dfaclentp, &dfaclcnt, isdir);

	if (error)
		return (error);


	if (dfaclcnt != 0) {
		/*
		 * Slap aclentp and dfaclentp into a single array.
		 */
		aclsz = sizeof (aclent_t) * aclcnt;
		dfaclsz = sizeof (aclent_t) * dfaclcnt;
		aclentp = FUNC1(aclentp, aclsz, aclsz + dfaclsz);
		if (aclentp != NULL) {
			(void) FUNC3(aclentp + aclcnt, dfaclentp, dfaclsz);
		} else {
			error = ENOMEM;
		}
	}

	if (aclentp) {
		*retaclentp = aclentp;
		*retaclcnt = aclcnt + dfaclcnt;
	}

	if (dfaclentp)
		FUNC0(dfaclentp, dfaclsz);

	return (error);
}