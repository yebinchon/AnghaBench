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
struct _citrus_db_factory {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (struct _citrus_db_factory**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct _citrus_db_factory*) ; 
 int /*<<< orphan*/  _db_hash_std ; 
 int /*<<< orphan*/  FUNC2 (struct _region*) ; 
 int /*<<< orphan*/  FUNC3 (struct _region*) ; 
 int FUNC4 (struct _citrus_db_factory*,char*,size_t) ; 
 int FUNC5 (struct _citrus_db_factory*,struct _region*) ; 
 int errno ; 
 char* FUNC6 (int /*<<< orphan*/ *,size_t*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

int
FUNC8(FILE *out, FILE *in)
{
	struct _citrus_db_factory *df;
	struct _region r;
	char *line;
	size_t size;
	int ret;

	ret = FUNC0(&df, &_db_hash_std, NULL);
	if (ret)
		return (ret);

	while ((line = FUNC6(in, &size)) != NULL)
		if ((ret = FUNC4(df, line, size))) {
			FUNC1(df);
			return (ret);
		}

	ret = FUNC5(df, &r);
	FUNC1(df);
	if (ret)
		return (ret);

	if (FUNC7(FUNC2(&r), FUNC3(&r), 1, out) != 1)
		return (errno);

	return (0);
}