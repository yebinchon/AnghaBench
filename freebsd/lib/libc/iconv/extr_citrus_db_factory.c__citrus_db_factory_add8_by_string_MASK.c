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
struct _citrus_db_factory {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct _citrus_db_factory*,char const*,struct _region*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct _region*,int /*<<< orphan*/ *,int) ; 
 int errno ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 

int
FUNC3(struct _citrus_db_factory *df,
    const char *key, uint8_t val)
{
	struct _region r;
	uint8_t *p;

	p = FUNC2(sizeof(*p));
	if (p == NULL)
		return (errno);
	*p = val;
	FUNC1(&r, p, 1);
	return (FUNC0(df, key, &r, 1));
}