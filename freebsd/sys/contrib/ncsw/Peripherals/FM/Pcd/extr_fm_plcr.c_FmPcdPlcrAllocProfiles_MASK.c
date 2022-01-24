#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint32_t ;
typedef  size_t uint16_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_12__ {TYPE_6__* p_FmPcdPlcr; } ;
typedef  TYPE_4__ t_FmPcd ;
typedef  scalar_t__ t_Error ;
struct TYPE_13__ {TYPE_3__* portsMapping; TYPE_2__* profiles; } ;
struct TYPE_11__ {size_t numOfProfiles; size_t profilesBase; } ;
struct TYPE_9__ {int /*<<< orphan*/  ownerId; scalar_t__ allocated; } ;
struct TYPE_10__ {TYPE_1__ profilesMng; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ E_FULL ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 scalar_t__ E_INVALID_VALUE ; 
 scalar_t__ E_OK ; 
 size_t FM_PCD_PLCR_NUM_ENTRIES ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  MINOR ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 scalar_t__ FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,size_t,size_t) ; 
 size_t FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 

t_Error FUNC8(t_Handle h_FmPcd, uint8_t hardwarePortId, uint16_t numOfProfiles)
{
    t_FmPcd                     *p_FmPcd = (t_FmPcd*)h_FmPcd;
    t_Error                     err = E_OK;
    uint32_t                    profilesFound;
    uint32_t                    intFlags;
    uint16_t                    i, first, swPortIndex = 0;

    FUNC7(p_FmPcd, E_INVALID_HANDLE);

    if (!numOfProfiles)
        return E_OK;

    FUNC0(hardwarePortId);

    if (numOfProfiles>FM_PCD_PLCR_NUM_ENTRIES)
        FUNC6(MINOR, E_INVALID_VALUE, ("numProfiles is too big."));

    if (!FUNC2(numOfProfiles))
        FUNC6(MAJOR, E_INVALID_VALUE, ("numProfiles must be a power of 2."));

    first = 0;
    profilesFound = 0;
    intFlags = FUNC4(p_FmPcd->p_FmPcdPlcr);

    for (i=0; i<FM_PCD_PLCR_NUM_ENTRIES; )
    {
        if (!p_FmPcd->p_FmPcdPlcr->profiles[i].profilesMng.allocated)
        {
            profilesFound++;
            i++;
            if (profilesFound == numOfProfiles)
                break;
        }
        else
        {
            profilesFound = 0;
            /* advance i to the next aligned address */
            i = first = (uint16_t)(first + numOfProfiles);
        }
    }

    if (profilesFound == numOfProfiles)
    {
        for (i=first; i<first + numOfProfiles; i++)
        {
            p_FmPcd->p_FmPcdPlcr->profiles[i].profilesMng.allocated = TRUE;
            p_FmPcd->p_FmPcdPlcr->profiles[i].profilesMng.ownerId = hardwarePortId;
        }
    }
    else
    {
        FUNC5(p_FmPcd->p_FmPcdPlcr, intFlags);
        FUNC6(MINOR, E_FULL, ("No profiles."));
    }
    FUNC5(p_FmPcd->p_FmPcdPlcr, intFlags);

    err = FUNC3(p_FmPcd, hardwarePortId, numOfProfiles, first);
    if (err)
    {
        FUNC6(MAJOR, err, NO_MSG);
    }

    FUNC1(swPortIndex, hardwarePortId);

    p_FmPcd->p_FmPcdPlcr->portsMapping[swPortIndex].numOfProfiles = numOfProfiles;
    p_FmPcd->p_FmPcdPlcr->portsMapping[swPortIndex].profilesBase = first;

    return E_OK;
}