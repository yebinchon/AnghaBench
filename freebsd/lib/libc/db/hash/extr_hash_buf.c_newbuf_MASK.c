#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
typedef  int u_int16_t ;
struct TYPE_15__ {scalar_t__ nbufs; int BSIZE; int SGSIZE; size_t SSHIFT; scalar_t__ new_file; TYPE_1__*** dir; TYPE_1__* cpage; } ;
struct TYPE_14__ {int flags; char* page; int addr; struct TYPE_14__* ovfl; } ;
typedef  TYPE_1__** SEGMENT ;
typedef  TYPE_2__ HTAB ;
typedef  TYPE_1__ BUFHEAD ;

/* Variables and functions */
 int BUF_BUCKET ; 
 scalar_t__ BUF_DISK ; 
 int BUF_MOD ; 
 int BUF_PIN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int) ; 
 TYPE_1__* LRU ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static BUFHEAD *
FUNC10(HTAB *hashp, u_int32_t addr, BUFHEAD *prev_bp)
{
	BUFHEAD *bp;		/* The buffer we're going to use */
	BUFHEAD *xbp;		/* Temp pointer */
	BUFHEAD *next_xbp;
	SEGMENT segp;
	int segment_ndx;
	u_int16_t oaddr, *shortp;

	oaddr = 0;
	bp = LRU;

        /* It is bad to overwrite the page under the cursor. */
        if (bp == hashp->cpage) {
                FUNC0(bp);
                FUNC4(bp);
                bp = LRU;
        }

	/* If prev_bp is part of bp overflow, create a new buffer. */
	if (hashp->nbufs == 0 && prev_bp && bp->ovfl) {
		BUFHEAD *ovfl;

		for (ovfl = bp->ovfl; ovfl ; ovfl = ovfl->ovfl) {
			if (ovfl == prev_bp) {
				hashp->nbufs++;
				break;
			}
		}
	}

	/*
	 * If LRU buffer is pinned, the buffer pool is too small. We need to
	 * allocate more buffers.
	 */
	if (hashp->nbufs || (bp->flags & BUF_PIN) || bp == hashp->cpage) {
		/* Allocate a new one */
		if ((bp = (BUFHEAD *)FUNC7(1, sizeof(BUFHEAD))) == NULL)
			return (NULL);
		if ((bp->page = (char *)FUNC7(1, hashp->BSIZE)) == NULL) {
			FUNC9(bp);
			return (NULL);
		}
		if (hashp->nbufs)
			hashp->nbufs--;
	} else {
		/* Kick someone out */
		FUNC0(bp);
		/*
		 * If this is an overflow page with addr 0, it's already been
		 * flushed back in an overflow chain and initialized.
		 */
		if ((bp->addr != 0) || (bp->flags & BUF_BUCKET)) {
			/*
			 * Set oaddr before __put_page so that you get it
			 * before bytes are swapped.
			 */
			shortp = (u_int16_t *)bp->page;
			if (shortp[0])
				oaddr = shortp[shortp[0] - 1];
			if ((bp->flags & BUF_MOD) && FUNC5(hashp, bp->page,
			    bp->addr, (int)FUNC2(bp->flags), 0))
				return (NULL);
			/*
			 * Update the pointer to this page (i.e. invalidate it).
			 *
			 * If this is a new file (i.e. we created it at open
			 * time), make sure that we mark pages which have been
			 * written to disk so we retrieve them from disk later,
			 * rather than allocating new pages.
			 */
			if (FUNC2(bp->flags)) {
				segment_ndx = bp->addr & (hashp->SGSIZE - 1);
				segp = hashp->dir[bp->addr >> hashp->SSHIFT];
#ifdef DEBUG
				assert(segp != NULL);
#endif

				if (hashp->new_file &&
				    ((bp->flags & BUF_MOD) ||
				    FUNC1(segp[segment_ndx])))
					segp[segment_ndx] = (BUFHEAD *)BUF_DISK;
				else
					segp[segment_ndx] = NULL;
			}
			/*
			 * Since overflow pages can only be access by means of
			 * their bucket, free overflow pages associated with
			 * this bucket.
			 */
			for (xbp = bp; xbp->ovfl;) {
				next_xbp = xbp->ovfl;
				xbp->ovfl = NULL;
				xbp = next_xbp;

				/* Check that ovfl pointer is up date. */
				if (FUNC2(xbp->flags) ||
				    (oaddr != xbp->addr))
					break;

				shortp = (u_int16_t *)xbp->page;
				if (shortp[0])
					/* set before __put_page */
					oaddr = shortp[shortp[0] - 1];
				if ((xbp->flags & BUF_MOD) && FUNC5(hashp,
				    xbp->page, xbp->addr, 0, 0))
					return (NULL);
				xbp->addr = 0;
				xbp->flags = 0;
				FUNC0(xbp);
				FUNC3(xbp);
			}
		}
	}

	/* Now assign this buffer */
	bp->addr = addr;
#ifdef DEBUG1
	(void)fprintf(stderr, "NEWBUF1: %d->ovfl was %d is now %d\n",
	    bp->addr, (bp->ovfl ? bp->ovfl->addr : 0), 0);
#endif
	bp->ovfl = NULL;
	if (prev_bp) {
		/*
		 * If prev_bp is set, this is an overflow page, hook it in to
		 * the buffer overflow links.
		 */
#ifdef DEBUG1
		(void)fprintf(stderr, "NEWBUF2: %d->ovfl was %d is now %d\n",
		    prev_bp->addr, (prev_bp->ovfl ? prev_bp->ovfl->addr : 0),
		    (bp ? bp->addr : 0));
#endif
		prev_bp->ovfl = bp;
		bp->flags = 0;
	} else
		bp->flags = BUF_BUCKET;
	FUNC4(bp);
	return (bp);
}