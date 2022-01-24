#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ t_Handle ;
struct TYPE_2__ {int /*<<< orphan*/  p_Lock; } ;
typedef  TYPE_1__ t_FmPcdCcTree ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_BUSY ; 
 int /*<<< orphan*/  E_OK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static t_Error FUNC3(t_Handle h_FmPcdCcTree)
{
    t_FmPcdCcTree *p_FmPcdCcTree = (t_FmPcdCcTree *)h_FmPcdCcTree;

    FUNC0(h_FmPcdCcTree);

    if (FUNC2(p_FmPcdCcTree->p_Lock))
        return E_OK;

    return FUNC1(E_BUSY);
}