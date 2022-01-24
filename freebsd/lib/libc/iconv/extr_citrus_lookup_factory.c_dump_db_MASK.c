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
 int /*<<< orphan*/  _CITRUS_LOOKUP_MAGIC ; 
 size_t FUNC0 (struct _citrus_db_factory*) ; 
 int FUNC1 (struct _citrus_db_factory*,int /*<<< orphan*/ ,struct _region*) ; 
 int /*<<< orphan*/  FUNC2 (struct _region*,void*,size_t) ; 
 int errno ; 
 void* FUNC3 (size_t) ; 

__attribute__((used)) static int
FUNC4(struct _citrus_db_factory *df, struct _region *r)
{
	void *ptr;
	size_t size;

	size = FUNC0(df);
	ptr = FUNC3(size);
	if (ptr == NULL)
		return (errno);
	FUNC2(r, ptr, size);

	return (FUNC1(df, _CITRUS_LOOKUP_MAGIC, r));
}