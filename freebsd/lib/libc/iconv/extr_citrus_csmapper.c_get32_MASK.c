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
typedef  int /*<<< orphan*/  uint32_t ;
struct _region {int dummy; } ;

/* Variables and functions */
 int EFTYPE ; 
 int /*<<< orphan*/  FUNC0 (struct _region*) ; 
 int FUNC1 (struct _region*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int
FUNC4(struct _region *r, uint32_t *rval)
{

	if (FUNC1(r) != 4)
		return (EFTYPE);

	FUNC3(rval, FUNC0(r), (size_t)4);
	*rval = FUNC2(*rval);

	return (0);
}