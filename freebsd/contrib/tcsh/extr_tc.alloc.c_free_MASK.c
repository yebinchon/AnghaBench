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
union overhead {scalar_t__ ov_magic; int ov_index; union overhead* ov_next; scalar_t__ ov_size; } ;
typedef  int /*<<< orphan*/ * ptr_t ;
typedef  scalar_t__ caddr_t ;
typedef  scalar_t__ U_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ MAGIC ; 
 scalar_t__ FUNC2 (int) ; 
 int NBUCKETS ; 
 scalar_t__ RMAGIC ; 
 scalar_t__ RSLOP ; 
 scalar_t__ dont_free ; 
 scalar_t__ membot ; 
 scalar_t__ memtop ; 
 union overhead** nextf ; 
 int /*<<< orphan*/ * nmalloc ; 

void
FUNC3(ptr_t cp)
{
#ifndef lint
    int size;
    union overhead *op;

    /*
     * the don't free flag is there so that we avoid os bugs in routines
     * that free invalid pointers!
     */
    if (cp == NULL || dont_free)
	return;
    FUNC1(!memtop || !membot,
	  FUNC0(19, 2, "free(%p) called before any allocations."), cp);
    FUNC1(cp > (ptr_t) memtop,
	  FUNC0(19, 3, "free(%p) above top of memory."), cp);
    FUNC1(cp < (ptr_t) membot,
	  FUNC0(19, 4, "free(%p) below bottom of memory."), cp);
    op = (union overhead *) (((caddr_t) cp) - FUNC2(sizeof(union overhead)));
    FUNC1(op->ov_magic != MAGIC,
	  FUNC0(19, 5, "free(%p) bad block."), cp);

#ifdef RCHECK
    if (op->ov_index <= 13)
	CHECK(*(U_int *) ((caddr_t) op + op->ov_size + 1 - RSLOP) != RMAGIC,
	      CGETS(19, 6, "free(%p) bad range check."), cp);
#endif
    FUNC1(op->ov_index >= NBUCKETS,
	  FUNC0(19, 7, "free(%p) bad block index."), cp);
    size = op->ov_index;
    op->ov_next = nextf[size];
    nextf[size] = op;

    nmalloc[size]--;

#else
    if (cp == NULL)
	return;
#endif
}