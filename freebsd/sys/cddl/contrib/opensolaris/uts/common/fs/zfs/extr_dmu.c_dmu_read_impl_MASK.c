#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {scalar_t__ dn_maxblkid; scalar_t__ dn_datablksz; } ;
typedef  TYPE_1__ dnode_t ;
struct TYPE_8__ {scalar_t__ db_offset; scalar_t__ db_size; scalar_t__ db_data; } ;
typedef  TYPE_2__ dmu_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DMU_MAX_ACCESS ; 
 int /*<<< orphan*/  FTAG ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int FUNC4 (TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,TYPE_2__***,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(dnode_t *dn, uint64_t offset, uint64_t size,
    void *buf, uint32_t flags)
{
	dmu_buf_t **dbp;
	int numbufs, err = 0;

	/*
	 * Deal with odd block sizes, where there can't be data past the first
	 * block.  If we ever do the tail block optimization, we will need to
	 * handle that here as well.
	 */
	if (dn->dn_maxblkid == 0) {
		int newsz = offset > dn->dn_datablksz ? 0 :
		    FUNC1(size, dn->dn_datablksz - offset);
		FUNC3((char *)buf + newsz, size - newsz);
		size = newsz;
	}

	while (size > 0) {
		uint64_t mylen = FUNC1(size, DMU_MAX_ACCESS / 2);
		int i;

		/*
		 * NB: we could do this block-at-a-time, but it's nice
		 * to be reading in parallel.
		 */
		err = FUNC4(dn, offset, mylen,
		    TRUE, FTAG, &numbufs, &dbp, flags);
		if (err)
			break;

		for (i = 0; i < numbufs; i++) {
			int tocpy;
			int bufoff;
			dmu_buf_t *db = dbp[i];

			FUNC0(size > 0);

			bufoff = offset - db->db_offset;
			tocpy = (int)FUNC1(db->db_size - bufoff, size);

			FUNC2((char *)db->db_data + bufoff, buf, tocpy);

			offset += tocpy;
			size -= tocpy;
			buf = (char *)buf + tocpy;
		}
		FUNC5(dbp, numbufs, FTAG);
	}
	return (err);
}