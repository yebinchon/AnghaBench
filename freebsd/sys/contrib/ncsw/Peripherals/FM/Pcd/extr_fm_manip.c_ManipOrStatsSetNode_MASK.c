#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  TYPE_1__* t_Handle ;
typedef  int /*<<< orphan*/  t_FmPcdStatsParams ;
struct TYPE_18__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ t_FmPcdManipParams ;
struct TYPE_17__ {scalar_t__ opcode; struct TYPE_17__* h_FmPcd; struct TYPE_17__* h_Ad; scalar_t__ muramAllocate; int /*<<< orphan*/  manipParams; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ t_FmPcdManip ;
struct TYPE_19__ {int /*<<< orphan*/  h_FmMuram; } ;
typedef  TYPE_4__ t_FmPcd ;
typedef  scalar_t__ t_Error ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  E_INVALID_VALUE ; 
 int /*<<< orphan*/  E_NOT_SUPPORTED ; 
 int /*<<< orphan*/  E_NO_MEMORY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FM_PCD_CC_AD_ENTRY_SIZE ; 
 int /*<<< orphan*/  FM_PCD_CC_AD_TABLE_ALIGN ; 
 scalar_t__ HMAN_OC_CAPWAP_REASSEMBLY ; 
 scalar_t__ HMAN_OC_IP_REASSEMBLY ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__**,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static t_Handle FUNC10(t_Handle h_FmPcd, t_Handle *p_Params,
                                    bool stats)
{
    t_FmPcdManip *p_Manip;
    t_Error err;
    t_FmPcd *p_FmPcd = (t_FmPcd *)h_FmPcd;

    p_Manip = (t_FmPcdManip*)FUNC7(sizeof(t_FmPcdManip));
    if (!p_Manip)
    {
        FUNC4(MAJOR, E_NO_MEMORY, ("No memory"));
        return NULL;
    }
    FUNC9(p_Manip, 0, sizeof(t_FmPcdManip));

    p_Manip->type = ((t_FmPcdManipParams *)p_Params)->type;
    FUNC8((uint8_t*)&p_Manip->manipParams, p_Params,
           sizeof(p_Manip->manipParams));

    if (!stats)
        err = FUNC0(p_Manip,
                                         (t_FmPcdManipParams *)p_Params);
#if (defined(FM_CAPWAP_SUPPORT) && (DPAA_VERSION == 10))
    else
        err = CheckStatsParamsAndSetType(p_Manip, (t_FmPcdStatsParams *)p_Params);
#else /* not (defined(FM_CAPWAP_SUPPORT) && (DPAA_VERSION == 10)) */
    else
    {
        FUNC4(MAJOR, E_NOT_SUPPORTED, ("Statistics node!"));
        FUNC6(p_Manip);
        return NULL;
    }
#endif /* (defined(FM_CAPWAP_SUPPORT) && (DPAA_VERSION == 10)) */
    if (err)
    {
        FUNC4(MAJOR, E_INVALID_VALUE, ("Invalid header manipulation type"));
        FUNC6(p_Manip);
        return NULL;
    }

    if ((p_Manip->opcode != HMAN_OC_IP_REASSEMBLY) && (p_Manip->opcode != HMAN_OC_CAPWAP_REASSEMBLY))
    {
        /* In Case of reassembly manipulation the reassembly action descriptor will
         be defines later on */
        if (p_Manip->muramAllocate)
        {
            p_Manip->h_Ad = (t_Handle)FUNC2(
                    p_FmPcd->h_FmMuram, FM_PCD_CC_AD_ENTRY_SIZE,
                    FM_PCD_CC_AD_TABLE_ALIGN);
            if (!p_Manip->h_Ad)
            {
                FUNC4(MAJOR, E_NO_MEMORY, ("MURAM alloc for Manipulation action descriptor"));
                FUNC5(p_Manip, p_FmPcd);
                FUNC6(p_Manip);
                return NULL;
            }

            FUNC3(p_Manip->h_Ad, 0, FM_PCD_CC_AD_ENTRY_SIZE);
        }
        else
        {
            p_Manip->h_Ad = (t_Handle)FUNC7(
                    FM_PCD_CC_AD_ENTRY_SIZE * sizeof(uint8_t));
            if (!p_Manip->h_Ad)
            {
                FUNC4(MAJOR, E_NO_MEMORY, ("Allocation of Manipulation action descriptor"));
                FUNC5(p_Manip, p_FmPcd);
                FUNC6(p_Manip);
                return NULL;
            }

            FUNC9(p_Manip->h_Ad, 0, FM_PCD_CC_AD_ENTRY_SIZE * sizeof(uint8_t));
        }
    }

    p_Manip->h_FmPcd = h_FmPcd;

    return p_Manip;
}