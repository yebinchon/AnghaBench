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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int off_t ;
struct TYPE_4__ {int dn_indblkshift; int dn_datablkszsec; int dn_nlevels; int dn_maxblkid; int /*<<< orphan*/ * dn_blkptr; } ;
typedef  TYPE_1__ dnode_phys_t ;
typedef  int /*<<< orphan*/  blkptr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int EIO ; 
 int SPA_BLKPTRSHIFT ; 
 int SPA_MAXBLOCKSIZE ; 
 int SPA_MINBLOCKSHIFT ; 
 int dnode_cache_bn ; 
 int /*<<< orphan*/ * dnode_cache_buf ; 
 TYPE_1__ const* dnode_cache_obj ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(const spa_t *spa, const dnode_phys_t *dnode, off_t offset, void *buf, size_t buflen)
{
	int ibshift = dnode->dn_indblkshift - SPA_BLKPTRSHIFT;
	int bsize = dnode->dn_datablkszsec << SPA_MINBLOCKSHIFT;
	int nlevels = dnode->dn_nlevels;
	int i, rc;

	if (bsize > SPA_MAXBLOCKSIZE) {
		FUNC3("ZFS: I/O error - blocks larger than %llu are not "
		    "supported\n", SPA_MAXBLOCKSIZE);
		return (EIO);
	}

	/*
	 * Note: bsize may not be a power of two here so we need to do an
	 * actual divide rather than a bitshift.
	 */
	while (buflen > 0) {
		uint64_t bn = offset / bsize;
		int boff = offset % bsize;
		int ibn;
		const blkptr_t *indbp;
		blkptr_t bp;

		if (bn > dnode->dn_maxblkid)
			return (EIO);

		if (dnode == dnode_cache_obj && bn == dnode_cache_bn)
			goto cached;

		indbp = dnode->dn_blkptr;
		for (i = 0; i < nlevels; i++) {
			/*
			 * Copy the bp from the indirect array so that
			 * we can re-use the scratch buffer for multi-level
			 * objects.
			 */
			ibn = bn >> ((nlevels - i - 1) * ibshift);
			ibn &= ((1 << ibshift) - 1);
			bp = indbp[ibn];
			if (FUNC0(&bp)) {
				FUNC2(dnode_cache_buf, 0, bsize);
				break;
			}
			rc = FUNC4(spa, &bp, dnode_cache_buf);
			if (rc)
				return (rc);
			indbp = (const blkptr_t *) dnode_cache_buf;
		}
		dnode_cache_obj = dnode;
		dnode_cache_bn = bn;
	cached:

		/*
		 * The buffer contains our data block. Copy what we
		 * need from it and loop.
		 */ 
		i = bsize - boff;
		if (i > buflen) i = buflen;
		FUNC1(buf, &dnode_cache_buf[boff], i);
		buf = ((char*) buf) + i;
		offset += i;
		buflen -= i;
	}

	return (0);
}