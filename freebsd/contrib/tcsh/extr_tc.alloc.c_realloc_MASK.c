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
union overhead {scalar_t__ ov_magic; int ov_index; scalar_t__ ov_size; void* ov_rmagic; } ;
typedef  int /*<<< orphan*/ * ptr_t ;
typedef  int /*<<< orphan*/ * memalign_t ;
typedef  scalar_t__ caddr_t ;
typedef  scalar_t__ U_short ;
typedef  size_t U_int ;

/* Variables and functions */
 scalar_t__ MAGIC ; 
 int FUNC0 (int) ; 
 void* RMAGIC ; 
 size_t RSLOP ; 
 int FUNC1 (union overhead*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int realloc_srchlen ; 

memalign_t
FUNC5(ptr_t cp, size_t nbytes)
{
#ifndef lint
    U_int onb;
    union overhead *op;
    ptr_t res;
    int i;
    int     was_alloced = 0;

    if (cp == NULL)
	return (FUNC3(nbytes));
    op = (union overhead *) (((caddr_t) cp) - FUNC0(sizeof(union overhead)));
    if (op->ov_magic == MAGIC) {
	was_alloced++;
	i = op->ov_index;
    }
    else
	/*
	 * Already free, doing "compaction".
	 * 
	 * Search for the old block of memory on the free list.  First, check the
	 * most common case (last element free'd), then (this failing) the last
	 * ``realloc_srchlen'' items free'd. If all lookups fail, then assume
	 * the size of the memory block being realloc'd is the smallest
	 * possible.
	 */
	if ((i = FUNC1(op, 1)) < 0 &&
	    (i = FUNC1(op, realloc_srchlen)) < 0)
	    i = 0;

    onb = FUNC0(nbytes + FUNC0(sizeof(union overhead)) + RSLOP);

    /* avoid the copy if same size block */
    if (was_alloced && (onb <= (U_int) (1 << (i + 3))) && 
	(onb > (U_int) (1 << (i + 2)))) {
#ifdef RCHECK
	/* JMR: formerly this wasn't updated ! */
	nbytes = MEMALIGN(MEMALIGN(sizeof(union overhead))+nbytes+RSLOP);
	*((U_int *) (((caddr_t) op) + nbytes - RSLOP)) = RMAGIC;
	op->ov_rmagic = RMAGIC;
	op->ov_size = (op->ov_index <= 13) ? (U_short)nbytes - 1 : 0;
#endif
	return ((memalign_t) cp);
    }
    if ((res = FUNC3(nbytes)) == NULL)
	return ((memalign_t) NULL);
    if (cp != res) {		/* common optimization */
	/* 
	 * christos: this used to copy nbytes! It should copy the 
	 * smaller of the old and new size
	 */
	onb = (1 << (i + 3)) - FUNC0(sizeof(union overhead)) - RSLOP;
	(void) FUNC4(res, cp, onb < nbytes ? onb : nbytes);
    }
    if (was_alloced)
	FUNC2(cp);
    return ((memalign_t) res);
#else
    if (cp && nbytes)
	return ((memalign_t) 0);
    else
	return ((memalign_t) 0);
#endif /* !lint */
}