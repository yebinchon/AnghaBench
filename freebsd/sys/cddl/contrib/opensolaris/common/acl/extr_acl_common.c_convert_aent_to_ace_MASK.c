#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  caddr_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_4__ {int a_type; } ;
typedef  TYPE_1__ aclent_t ;
typedef  int /*<<< orphan*/  ace_t ;

/* Variables and functions */
 int ACL_DEFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  cmp2acls ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC5(aclent_t *aclentp, int aclcnt, boolean_t isdir,
    ace_t **retacep, int *retacecnt)
{
	ace_t *acep;
	ace_t *dfacep;
	int acecnt = 0;
	int dfacecnt = 0;
	int dfaclstart = 0;
	int dfaclcnt = 0;
	aclent_t *aclp;
	int i;
	int error;
	int acesz, dfacesz;

	FUNC2((caddr_t)aclentp, aclcnt, sizeof (aclent_t), cmp2acls);

	for (i = 0, aclp = aclentp; i < aclcnt; aclp++, i++) {
		if (aclp->a_type & ACL_DEFAULT)
			break;
	}

	if (i < aclcnt) {
		dfaclstart = i;
		dfaclcnt = aclcnt - i;
	}

	if (dfaclcnt && !isdir) {
		return (EINVAL);
	}

	error = FUNC3(aclentp, i,  &acep, &acecnt, isdir);
	if (error)
		return (error);

	if (dfaclcnt) {
		error = FUNC3(&aclentp[dfaclstart], dfaclcnt,
		    &dfacep, &dfacecnt, isdir);
		if (error) {
			if (acep) {
				FUNC0(acep, acecnt * sizeof (ace_t));
			}
			return (error);
		}
	}

	if (dfacecnt != 0) {
		acesz = sizeof (ace_t) * acecnt;
		dfacesz = sizeof (ace_t) * dfacecnt;
		acep = FUNC1(acep, acesz, acesz + dfacesz);
		if (acep == NULL)
			return (ENOMEM);
		if (dfaclcnt) {
			(void) FUNC4(acep + acecnt, dfacep, dfacesz);
		}
	}
	if (dfaclcnt)
		FUNC0(dfacep, dfacecnt * sizeof (ace_t));

	*retacecnt = acecnt + dfacecnt;
	*retacep = acep;
	return (0);
}