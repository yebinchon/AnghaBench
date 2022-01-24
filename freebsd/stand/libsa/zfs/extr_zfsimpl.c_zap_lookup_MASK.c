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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_6__ {size_t dn_datablkszsec; } ;
typedef  TYPE_1__ dnode_phys_t ;

/* Variables and functions */
 int EIO ; 
 size_t SPA_MINBLOCKSHIFT ; 
 scalar_t__ ZBT_HEADER ; 
 scalar_t__ ZBT_MICRO ; 
 int FUNC0 (int /*<<< orphan*/  const*,TYPE_1__ const*,int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 int FUNC1 (int /*<<< orphan*/  const*,TYPE_1__ const*,char const*,scalar_t__,scalar_t__,void*) ; 
 int FUNC2 (TYPE_1__ const*,char const*,void*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ zap_scratch ; 

__attribute__((used)) static int
FUNC4(const spa_t *spa, const dnode_phys_t *dnode, const char *name,
    uint64_t integer_size, uint64_t num_integers, void *value)
{
	int rc;
	uint64_t zap_type;
	size_t size = dnode->dn_datablkszsec << SPA_MINBLOCKSHIFT;

	rc = FUNC0(spa, dnode, 0, zap_scratch, size);
	if (rc)
		return (rc);

	zap_type = *(uint64_t *) zap_scratch;
	if (zap_type == ZBT_MICRO)
		return FUNC2(dnode, name, value);
	else if (zap_type == ZBT_HEADER) {
		return FUNC1(spa, dnode, name, integer_size,
		    num_integers, value);
	}
	FUNC3("ZFS: invalid zap_type=%d\n", (int)zap_type);
	return (EIO);
}