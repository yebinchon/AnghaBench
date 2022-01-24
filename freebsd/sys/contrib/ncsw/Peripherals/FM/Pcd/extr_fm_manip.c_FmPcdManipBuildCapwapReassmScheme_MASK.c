#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  TYPE_6__* t_Handle ;
struct TYPE_26__ {scalar_t__ h_Scheme; scalar_t__ relativeSchemeId; } ;
struct TYPE_27__ {TYPE_4__ capwap; } ;
struct TYPE_28__ {TYPE_5__ reassmParams; } ;
typedef  TYPE_6__ t_FmPcdManip ;
struct TYPE_25__ {void* update; } ;
struct TYPE_24__ {scalar_t__ relativeSchemeId; } ;
struct TYPE_23__ {TYPE_6__* h_NetEnv; } ;
struct TYPE_29__ {void* bypassFqidGeneration; TYPE_3__ schemeCounter; TYPE_2__ id; TYPE_1__ netEnvParams; } ;
typedef  TYPE_8__ t_FmPcdKgSchemeParams ;
typedef  TYPE_6__ t_FmPcd ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  E_NO_MEMORY ; 
 int /*<<< orphan*/  E_OK ; 
 scalar_t__ FUNC1 (TYPE_6__*,TYPE_8__*) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*) ; 
 TYPE_8__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,TYPE_8__*,TYPE_6__*,scalar_t__) ; 

t_Error FUNC7(t_FmPcd *p_FmPcd, t_Handle h_NetEnv,
                                          t_Handle h_CcTree, t_Handle h_Manip,
                                          uint8_t groupId)
{
    t_FmPcdManip *p_Manip = (t_FmPcdManip *)h_Manip;
    t_FmPcdKgSchemeParams *p_SchemeParams = NULL;

    FUNC0(p_FmPcd);
    FUNC0(h_NetEnv);
    FUNC0(p_Manip);

    /* scheme was already build, no need to check for IPv6 */
    if (p_Manip->reassmParams.capwap.h_Scheme)
        return E_OK;

    p_SchemeParams = FUNC4(sizeof(t_FmPcdKgSchemeParams));
    if (!p_SchemeParams)
        FUNC2(MAJOR, E_NO_MEMORY,
                     ("Memory allocation failed for scheme"));

    FUNC5(p_SchemeParams, 0, sizeof(t_FmPcdKgSchemeParams));
    p_SchemeParams->netEnvParams.h_NetEnv = h_NetEnv;
    p_SchemeParams->id.relativeSchemeId =
            (uint8_t)p_Manip->reassmParams.capwap.relativeSchemeId;
    p_SchemeParams->schemeCounter.update = TRUE;
    p_SchemeParams->bypassFqidGeneration = TRUE;

    FUNC6(p_FmPcd, p_SchemeParams, h_CcTree, groupId);

    p_Manip->reassmParams.capwap.h_Scheme = FUNC1(p_FmPcd,
                                                               p_SchemeParams);

    FUNC3(p_SchemeParams);

    return E_OK;
}