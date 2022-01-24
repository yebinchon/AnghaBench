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
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  dnode_phys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  spa ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,void*,size_t) ; 

__attribute__((used)) static int
FUNC2(const dnode_phys_t *dnode, off_t *offp, void *buf, size_t nbyte)
{
    if ((size_t)FUNC1(spa, dnode, offp, buf, nbyte) != nbyte) {
	FUNC0("Invalid format\n");
	return -1;
    }
    return 0;
}