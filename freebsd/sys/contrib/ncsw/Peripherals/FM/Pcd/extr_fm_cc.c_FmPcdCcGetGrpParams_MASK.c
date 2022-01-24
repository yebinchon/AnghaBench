#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_4__ {size_t numOfGrps; TYPE_1__* fmPcdGroupParam; } ;
typedef  TYPE_2__ t_FmPcdCcTree ;
typedef  int /*<<< orphan*/  t_Error ;
struct TYPE_3__ {size_t baseGroupEntry; int /*<<< orphan*/  totalBitsMask; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

t_Error FUNC2(t_Handle h_FmPcdCcTree, uint8_t grpId,
                            uint32_t *p_GrpBits, uint8_t *p_GrpBase)
{
    t_FmPcdCcTree *p_FmPcdCcTree = (t_FmPcdCcTree *)h_FmPcdCcTree;

    FUNC1(h_FmPcdCcTree, E_INVALID_HANDLE);

    if (grpId >= p_FmPcdCcTree->numOfGrps)
        FUNC0(MAJOR, E_INVALID_HANDLE,
                     ("grpId you asked > numOfGroup of relevant tree"));

    *p_GrpBits = p_FmPcdCcTree->fmPcdGroupParam[grpId].totalBitsMask;
    *p_GrpBase = p_FmPcdCcTree->fmPcdGroupParam[grpId].baseGroupEntry;

    return E_OK;
}