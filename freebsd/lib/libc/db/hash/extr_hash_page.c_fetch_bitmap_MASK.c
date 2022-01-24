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
typedef  int /*<<< orphan*/  u_int32_t ;
struct TYPE_4__ {int nmaps; int /*<<< orphan*/ ** mapp; int /*<<< orphan*/ * BITMAPS; int /*<<< orphan*/  BSIZE; } ;
typedef  TYPE_1__ HTAB ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int32_t *
FUNC3(HTAB *hashp, int ndx)
{
	if (ndx >= hashp->nmaps)
		return (NULL);
	if ((hashp->mapp[ndx] = (u_int32_t *)FUNC2(hashp->BSIZE)) == NULL)
		return (NULL);
	if (FUNC0(hashp,
	    (char *)hashp->mapp[ndx], hashp->BITMAPS[ndx], 0, 1, 1)) {
		FUNC1(hashp->mapp[ndx]);
		return (NULL);
	}
	return (hashp->mapp[ndx]);
}