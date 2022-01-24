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
struct TYPE_4__ {int DSIZE; int nsegs; int SSHIFT; int /*<<< orphan*/ ** dir; } ;
typedef  int /*<<< orphan*/ * SEGMENT ;
typedef  TYPE_1__ HTAB ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC2(HTAB *hashp, int nsegs)
{
	int i;
	SEGMENT store;

	int save_errno;

	if ((hashp->dir =
	    FUNC0(hashp->DSIZE, sizeof(SEGMENT *))) == NULL) {
		save_errno = errno;
		(void)FUNC1(hashp);
		errno = save_errno;
		return (-1);
	}
	hashp->nsegs = nsegs;
	if (nsegs == 0)
		return (0);
	/* Allocate segments */
	if ((store = FUNC0(nsegs << hashp->SSHIFT, sizeof(SEGMENT))) == NULL) {
		save_errno = errno;
		(void)FUNC1(hashp);
		errno = save_errno;
		return (-1);
	}
	for (i = 0; i < nsegs; i++)
		hashp->dir[i] = &store[i << hashp->SSHIFT];
	return (0);
}