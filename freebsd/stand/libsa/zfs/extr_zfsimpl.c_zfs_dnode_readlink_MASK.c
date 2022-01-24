#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  znode_phys_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  sa_hdr_phys_t ;
struct TYPE_6__ {scalar_t__ dn_bonustype; size_t dn_bonuslen; int dn_flags; char* dn_bonus; } ;
typedef  TYPE_1__ dnode_phys_t ;
typedef  int /*<<< orphan*/  blkptr_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ DMU_OT_SA ; 
 int DNODE_FLAG_SPILL_BLKPTR ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int EIO ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ SA_SYMLINK_OFFSET ; 
 int FUNC4 (int /*<<< orphan*/  const*,TYPE_1__*,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 
 void* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (void*,size_t) ; 
 int FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static int
FUNC9(const spa_t *spa, dnode_phys_t *dn, char *path, size_t psize)
{
	int rc = 0;

	if (dn->dn_bonustype == DMU_OT_SA) {
		sa_hdr_phys_t *sahdrp = NULL;
		size_t size = 0;
		void *buf = NULL;
		int hdrsize;
		char *p;

		if (dn->dn_bonuslen != 0)
			sahdrp = (sa_hdr_phys_t *)FUNC1(dn);
		else {
			blkptr_t *bp;

			if ((dn->dn_flags & DNODE_FLAG_SPILL_BLKPTR) == 0)
				return (EIO);
			bp = FUNC2(dn);

			size = FUNC0(bp);
			buf = FUNC6(size);
			rc = FUNC8(spa, bp, buf);
			if (rc != 0) {
				FUNC7(buf, size);
				return (rc);
			}
			sahdrp = buf;
		}
		hdrsize = FUNC3(sahdrp);
		p = (char *)((uintptr_t)sahdrp + hdrsize + SA_SYMLINK_OFFSET);
		FUNC5(path, p, psize);
		if (buf != NULL)
			FUNC7(buf, size);
		return (0);
	}
	/*
	 * Second test is purely to silence bogus compiler
	 * warning about accessing past the end of dn_bonus.
	 */
	if (psize + sizeof(znode_phys_t) <= dn->dn_bonuslen &&
	    sizeof(znode_phys_t) <= sizeof(dn->dn_bonus)) {
		FUNC5(path, &dn->dn_bonus[sizeof(znode_phys_t)], psize);
	} else {
		rc = FUNC4(spa, dn, 0, path, psize);
	}
	return (rc);
}