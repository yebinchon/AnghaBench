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
typedef  unsigned long long uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  dnode_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FTAG ; 
 unsigned long long UINT64_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long long,unsigned long long,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC4(objset_t *os, uint64_t object, uint64_t offset,
    uint64_t size, dmu_tx_t *tx)
{
	dnode_t *dn;
	int err = FUNC2(os, object, FTAG, &dn);
	if (err)
		return (err);
	FUNC0(offset < UINT64_MAX);
	FUNC0(size == -1ULL || size <= UINT64_MAX - offset);
	FUNC1(dn, offset, size, tx);
	FUNC3(dn, FTAG);
	return (0);
}