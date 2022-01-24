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
typedef  int uid_t ;
struct passwd {char const* pw_name; } ;
struct TYPE_3__ {scalar_t__ valid; int uid; char const* name; } ;
typedef  TYPE_1__ UIDC ;

/* Variables and functions */
 scalar_t__ INVALID ; 
 int UID_SZ ; 
 int /*<<< orphan*/  UNMLEN ; 
 scalar_t__ VALID ; 
 struct passwd* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  pwopn ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,char*,long) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct passwd* FUNC6 (int) ; 
 TYPE_1__** uidtb ; 
 scalar_t__ FUNC7 () ; 

const char *
FUNC8(uid_t uid, int noname)
{
	struct passwd *pw;
	UIDC *ptr, **pptr;

	if ((uidtb == NULL) && (FUNC7() < 0))
		return (NULL);

	/*
	 * see if we have this uid cached
	 */
	pptr = uidtb + (uid % UID_SZ);
	ptr = *pptr;

	if ((ptr != NULL) && (ptr->valid > 0) && (ptr->uid == uid)) {
		/*
		 * have an entry for this uid
		 */
		if (!noname || (ptr->valid == VALID))
			return (ptr->name);
		return (NULL);
	}

	/*
	 * No entry for this uid, we will add it
	 */
	if (!pwopn) {
		if (&_pwcache_setpassent != NULL)
			FUNC1)(1);
		++pwopn;
	}

	if (ptr == NULL)
		*pptr = ptr = (UIDC *)FUNC2(sizeof(UIDC));

	if ((pw = FUNC0)(uid)) == NULL) {
		/*
		 * no match for this uid in the local password file
		 * a string that is the uid in numeric format
		 */
		if (ptr == NULL)
			return (NULL);
		ptr->uid = uid;
		(void)FUNC3(ptr->name, UNMLEN, "%lu", (long) uid);
		ptr->valid = INVALID;
		if (noname)
			return (NULL);
	} else {
		/*
		 * there is an entry for this uid in the password file
		 */
		if (ptr == NULL)
			return (pw->pw_name);
		ptr->uid = uid;
		(void)FUNC4(ptr->name, pw->pw_name, UNMLEN);
		ptr->valid = VALID;
	}
	return (ptr->name);
}