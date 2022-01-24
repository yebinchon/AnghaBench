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
typedef  int /*<<< orphan*/  uint8_t ;
struct _region {int dummy; } ;
struct _citrus_db_locator {int dummy; } ;
struct _citrus_db {int dummy; } ;

/* Variables and functions */
 int EFTYPE ; 
 int FUNC0 (struct _citrus_db*,char const*,struct _region*,struct _citrus_db_locator*) ; 
 int /*<<< orphan*/  FUNC1 (struct _region*) ; 
 int FUNC2 (struct _region*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int
FUNC4(struct _citrus_db *db, const char *key,
    uint8_t *rval, struct _citrus_db_locator *dl)
{
	struct _region r;
	int ret;

	ret = FUNC0(db, key, &r, dl);
	if (ret)
		return (ret);

	if (FUNC2(&r) != 1)
		return (EFTYPE);

	if (rval)
		FUNC3(rval, FUNC1(&r), 1);

	return (0);
}