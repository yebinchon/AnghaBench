#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* p_Frag; } ;
struct TYPE_9__ {int totalFrames; int fragmentedFrames; int generatedFragments; int /*<<< orphan*/  matchTblPtr; TYPE_1__ fragParams; int /*<<< orphan*/  ccAdBase; struct TYPE_9__* h_Ad; } ;
typedef  TYPE_2__ t_FmPcdManipFragIpStats ;
typedef  TYPE_2__ t_FmPcdManip ;
typedef  int /*<<< orphan*/  t_Error ;
struct TYPE_10__ {int /*<<< orphan*/  gmask; } ;
typedef  TYPE_4__ t_AdOfTypeContLookup ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  E_OK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static t_Error FUNC2(t_FmPcdManip *p_Manip,
                                    t_FmPcdManipFragIpStats *p_Stats)
{
    t_AdOfTypeContLookup *p_Ad;

    FUNC0(p_Manip);
    FUNC0(p_Stats);
    FUNC0(p_Manip->h_Ad);
    FUNC0(p_Manip->fragParams.p_Frag);

    p_Ad = (t_AdOfTypeContLookup *)p_Manip->h_Ad;

    p_Stats->totalFrames = FUNC1(p_Ad->gmask);
    p_Stats->fragmentedFrames = FUNC1(p_Manip->fragParams.p_Frag->ccAdBase)
            & 0x00ffffff;
    p_Stats->generatedFragments =
            FUNC1(p_Manip->fragParams.p_Frag->matchTblPtr);

    return E_OK;
}