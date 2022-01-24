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
typedef  size_t u_int ;
struct bcache_devdata {int (* dv_strategy ) (int /*<<< orphan*/ ,int,size_t,size_t,char*,size_t*) ;int /*<<< orphan*/  dv_devdata; struct bcache* dv_cache; } ;
struct bcache {size_t bcache_nblks; } ;
typedef  size_t daddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcache*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,size_t) ; 
 int F_MASK ; 
#define  F_READ 129 
#define  F_WRITE 128 
 int FUNC2 (int,int) ; 
 size_t bcache_blksize ; 
 int /*<<< orphan*/  bcache_bypasses ; 
 int /*<<< orphan*/  bcache_ops ; 
 int FUNC3 (void*,int,size_t,size_t,char*,size_t*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,size_t,size_t,char*,size_t*) ; 
 int FUNC5 (void*,int const,size_t,size_t,char*,size_t*) ; 

int
FUNC6(void *devdata, int rw, daddr_t blk, size_t size,
    char *buf, size_t *rsize)
{
    struct bcache_devdata	*dd = (struct bcache_devdata *)devdata;
    struct bcache		*bc = dd->dv_cache;
    u_int bcache_nblks = 0;
    int nblk, cblk, ret;
    size_t csize, isize, total;

    bcache_ops++;

    if (bc != NULL)
	bcache_nblks = bc->bcache_nblks;

    /* bypass large requests, or when the cache is inactive */
    if (bc == NULL ||
	((size * 2 / bcache_blksize) > bcache_nblks)) {
	FUNC1("bypass %zu from %qu", size / bcache_blksize, blk);
	bcache_bypasses++;
	rw &= F_MASK;
	return (dd->dv_strategy(dd->dv_devdata, rw, blk, size, buf, rsize));
    }

    switch (rw & F_MASK) {
    case F_READ:
	nblk = size / bcache_blksize;
	if (size != 0 && nblk == 0)
	    nblk++;	/* read at least one block */

	ret = 0;
	total = 0;
	while(size) {
	    cblk = bcache_nblks - FUNC0(bc, blk); /* # of blocks left */
	    cblk = FUNC2(cblk, nblk);

	    if (size <= bcache_blksize)
		csize = size;
	    else
		csize = cblk * bcache_blksize;

	    ret = FUNC3(devdata, rw, blk, csize, buf+total, &isize);

	    /*
	     * we may have error from read ahead, if we have read some data
	     * return partial read.
	     */
	    if (ret != 0 || isize == 0) {
		if (total != 0)
		    ret = 0;
		break;
	    }
	    blk += isize / bcache_blksize;
	    total += isize;
	    size -= isize;
	    nblk = size / bcache_blksize;
	}

	if (rsize)
	    *rsize = total;

	return (ret);
    case F_WRITE:
	return FUNC5(devdata, F_WRITE, blk, size, buf, rsize);
    }
    return -1;
}