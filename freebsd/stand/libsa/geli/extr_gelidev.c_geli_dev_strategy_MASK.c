#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct geli_devdesc {TYPE_5__* gdev; TYPE_4__* hdesc; } ;
typedef  size_t off_t ;
typedef  size_t daddr_t ;
struct TYPE_6__ {scalar_t__ md_sectorsize; } ;
struct TYPE_10__ {TYPE_1__ md; } ;
struct TYPE_8__ {TYPE_2__* d_dev; } ;
struct TYPE_9__ {TYPE_3__ dd; } ;
struct TYPE_7__ {int (* dv_strategy ) (TYPE_4__*,int,size_t,size_t,char*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 size_t DEV_BSIZE ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int F_MASK ; 
 int F_READ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (TYPE_5__*,size_t,char*,size_t) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 size_t FUNC4 (size_t,int) ; 
 size_t FUNC5 (size_t,int) ; 
 int FUNC6 (TYPE_4__*,int,size_t,size_t,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(void *devdata, int rw, daddr_t blk, size_t size, char *buf,
    size_t *rsize)
{
	struct geli_devdesc *gdesc;
	off_t alnend, alnstart, reqend, reqstart;
	size_t alnsize;
	char *iobuf;
	int rc;

	/* We only handle reading; no write support. */
	if ((rw & F_MASK) != F_READ)
		return (EOPNOTSUPP);

	gdesc = (struct geli_devdesc *)devdata;

	/*
	 * We can only decrypt full geli blocks.  The blk arg is expressed in
	 * units of DEV_BSIZE blocks, while size is in bytes.  Convert
	 * everything to bytes, and calculate the geli-blocksize-aligned start
	 * and end points.
	 *
	 * Note: md_sectorsize must be cast to a signed type for the round2
	 * macros to work correctly (otherwise they get zero-extended to 64 bits
	 * and mask off the high order 32 bits of the requested start/end).
	 */

	reqstart = blk * DEV_BSIZE;
	reqend   = reqstart + size;
	alnstart = FUNC4(reqstart, (int)gdesc->gdev->md.md_sectorsize);
	alnend   = FUNC5(reqend, (int)gdesc->gdev->md.md_sectorsize);
	alnsize  = alnend - alnstart;

	/*
	 * If alignment requires us to read more than the size of the provided
	 * buffer, allocate a temporary buffer.
	 */
	if (alnsize <= size)
		iobuf = buf;
	else if ((iobuf = FUNC2(alnsize)) == NULL)
		return (ENOMEM);

	/*
	 * Read the encrypted data using the host provider, then decrypt it.
	 */
	rc = gdesc->hdesc->dd.d_dev->dv_strategy(gdesc->hdesc, rw,
	    alnstart / DEV_BSIZE, alnsize, iobuf, NULL);
	if (rc != 0)
		goto out;
	rc = FUNC1(gdesc->gdev, alnstart, iobuf, alnsize);
	if (rc != 0)
		goto out;

	/*
	 * If we had to use a temporary buffer, copy the requested part of the
	 * data to the caller's buffer.
	 */
	if (iobuf != buf)
		FUNC3(buf, iobuf + (reqstart - alnstart), size);

	if (rsize != NULL)
		*rsize = size;
out:
	if (iobuf != buf)
		FUNC0(iobuf);

	return (rc);
}