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
typedef  scalar_t__ t_Handle ;
struct TYPE_4__ {scalar_t__ owners; } ;
typedef  TYPE_1__ t_FmPcdFrmReplicGroup ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

t_Error FUNC3(t_Handle h_ReplicGroup)
{
    t_FmPcdFrmReplicGroup   *p_ReplicGroup = (t_FmPcdFrmReplicGroup *)h_ReplicGroup;

    FUNC2(p_ReplicGroup, E_INVALID_HANDLE);

    if (p_ReplicGroup->owners)
        FUNC1(MAJOR,
                     E_INVALID_STATE,
                     ("the group has owners and can't be deleted"));

    FUNC0(p_ReplicGroup);

    return E_OK;
}