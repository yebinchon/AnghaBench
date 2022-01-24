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
struct _region {int dummy; } ;
struct _citrus_db_locator {int dummy; } ;
struct _citrus_db {int dummy; } ;

/* Variables and functions */
 int EFTYPE ; 
 int FUNC0 (struct _citrus_db*,char const*,struct _region*,struct _citrus_db_locator*) ; 
 char* FUNC1 (struct _region*) ; 
 int FUNC2 (struct _region*) ; 

int
FUNC3(struct _citrus_db *db, const char *key,
    const char **rdata, struct _citrus_db_locator *dl)
{
	struct _region r;
	int ret;

	ret = FUNC0(db, key, &r, dl);
	if (ret)
		return (ret);

	/* check whether the string is null terminated */
	if (FUNC2(&r) == 0)
		return (EFTYPE);
	if (*((const char*)FUNC1(&r)+FUNC2(&r)-1) != '\0')
		return (EFTYPE);

	if (rdata)
		*rdata = FUNC1(&r);

	return (0);
}