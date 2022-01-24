#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* zp_size; void* zp_gid; void* zp_uid; void* zp_mode; } ;
typedef  TYPE_1__ znode_phys_t ;
typedef  void* uint64_t ;
struct stat {void* st_size; void* st_gid; void* st_uid; void* st_mode; } ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  sa_hdr_phys_t ;
struct TYPE_7__ {scalar_t__ dn_bonustype; scalar_t__ dn_bonuslen; int dn_flags; scalar_t__ dn_bonus; } ;
typedef  TYPE_2__ dnode_phys_t ;
typedef  int /*<<< orphan*/  blkptr_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ DMU_OT_SA ; 
 int DNODE_FLAG_SPILL_BLKPTR ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*) ; 
 int EIO ; 
 int SA_GID_OFFSET ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int SA_MODE_OFFSET ; 
 int SA_SIZE_OFFSET ; 
 int SA_UID_OFFSET ; 
 void* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (void*,size_t) ; 
 int FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static int
FUNC7(const spa_t *spa, dnode_phys_t *dn, struct stat *sb)
{

	if (dn->dn_bonustype != DMU_OT_SA) {
		znode_phys_t *zp = (znode_phys_t *)dn->dn_bonus;

		sb->st_mode = zp->zp_mode;
		sb->st_uid = zp->zp_uid;
		sb->st_gid = zp->zp_gid;
		sb->st_size = zp->zp_size;
	} else {
		sa_hdr_phys_t *sahdrp;
		int hdrsize;
		size_t size = 0;
		void *buf = NULL;

		if (dn->dn_bonuslen != 0)
			sahdrp = (sa_hdr_phys_t *)FUNC1(dn);
		else {
			if ((dn->dn_flags & DNODE_FLAG_SPILL_BLKPTR) != 0) {
				blkptr_t *bp = FUNC2(dn);
				int error;

				size = FUNC0(bp);
				buf = FUNC4(size);
				error = FUNC6(spa, bp, buf);
				if (error != 0) {
					FUNC5(buf, size);
					return (error);
				}
				sahdrp = buf;
			} else {
				return (EIO);
			}
		}
		hdrsize = FUNC3(sahdrp);
		sb->st_mode = *(uint64_t *)((char *)sahdrp + hdrsize +
		    SA_MODE_OFFSET);
		sb->st_uid = *(uint64_t *)((char *)sahdrp + hdrsize +
		    SA_UID_OFFSET);
		sb->st_gid = *(uint64_t *)((char *)sahdrp + hdrsize +
		    SA_GID_OFFSET);
		sb->st_size = *(uint64_t *)((char *)sahdrp + hdrsize +
		    SA_SIZE_OFFSET);
		if (buf != NULL)
			FUNC5(buf, size);
	}

	return (0);
}