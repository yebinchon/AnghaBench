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
typedef  int /*<<< orphan*/  uint32_t ;
struct qm_addr {int /*<<< orphan*/  addr_ce; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,uintptr_t) ; 

__attribute__((used)) static __inline__ uint32_t FUNC2(struct qm_addr *qm, uintptr_t offset)
{
    uint32_t    *tmp = (uint32_t *)FUNC1(qm->addr_ce, offset);
    return FUNC0(*tmp);
}