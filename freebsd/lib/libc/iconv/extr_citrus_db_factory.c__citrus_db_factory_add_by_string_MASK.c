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
struct _citrus_region {int dummy; } ;
struct _citrus_db_factory {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct _citrus_db_factory*,struct _region*,int,struct _citrus_region*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct _region*,char*,int /*<<< orphan*/ ) ; 
 int errno ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

int
FUNC4(struct _citrus_db_factory *df,
    const char *key, struct _citrus_region *data, int datafree)
{
	struct _region r;
	char *tmp;

	tmp = FUNC2(key);
	if (tmp == NULL)
		return (errno);
	FUNC1(&r, tmp, FUNC3(key));
	return FUNC0(df, &r, 1, data, datafree);
}