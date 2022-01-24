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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_4__ {int /*<<< orphan*/  node; } ;
typedef  TYPE_1__ t_FmPcdLock ;
typedef  int /*<<< orphan*/  t_FmPcd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(t_Handle h_FmPcd, t_FmPcdLock *p_Lock)
{
    uint32_t intFlags;
    FUNC0(h_FmPcd);
    intFlags = FUNC2(h_FmPcd);
    FUNC4(&p_Lock->node);
    FUNC3(h_FmPcd, intFlags);
    FUNC1((t_FmPcd*)h_FmPcd, p_Lock);
}