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

/* Variables and functions */
 int FUNC0 (struct _citrus_db_factory*,char const*,struct _region*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct _region*,char*,scalar_t__) ; 
 int errno ; 
 char* FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char*) ; 

int
FUNC4(struct _citrus_db_factory *df,
    const char *key, const char *data)
{
	char *p;
	struct _region r;

	p = FUNC2(data);
	if (p == NULL)
		return (errno);
	FUNC1(&r, p, FUNC3(p) + 1);
	return (FUNC0(df, key, &r, 1));
}