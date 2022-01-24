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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  dnode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC3(objset_t *os, uint64_t object, uint64_t offset, uint64_t size,
    void *buf, uint32_t flags)
{
	dnode_t *dn;
	int err;

	err = FUNC1(os, object, FTAG, &dn);
	if (err != 0)
		return (err);

	err = FUNC0(dn, offset, size, buf, flags);
	FUNC2(dn, FTAG);
	return (err);
}