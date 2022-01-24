#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  TYPE_1__* t_Handle ;
struct TYPE_10__ {int tsbs; int /*<<< orphan*/  activate; scalar_t__ iprcpt; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ t_FmPcdCcReassmTimeoutParams ;
struct TYPE_9__ {int /*<<< orphan*/  h_Hc; scalar_t__ physicalMuramBase; int /*<<< orphan*/  h_Fm; } ;
typedef  TYPE_1__ t_FmPcd ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  E_FULL ; 
 int /*<<< orphan*/  E_INVALID_SELECTION ; 
 int /*<<< orphan*/  E_INVALID_VALUE ; 
 int /*<<< orphan*/  E_NOT_AVAILABLE ; 
 int /*<<< orphan*/  E_NO_MEMORY ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FM_PCD_MANIP_REASM_TIMEOUT_THREAD_THRESH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  MAJOR ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

t_Error FUNC6(t_Handle h_FmPcd, t_Handle h_ReasmCommonPramTbl)
{
    t_FmPcd *p_FmPcd = (t_FmPcd*)h_FmPcd;
    t_FmPcdCcReassmTimeoutParams ccReassmTimeoutParams = { 0 };
    t_Error err = E_OK;
    uint8_t result;
    uint32_t bitFor1Micro, tsbs, log2num;

    FUNC0(p_FmPcd);
    FUNC0(h_ReasmCommonPramTbl);

    bitFor1Micro = FUNC1(p_FmPcd->h_Fm);
    if (bitFor1Micro == 0)
        FUNC4(MAJOR, E_NOT_AVAILABLE, ("Timestamp scale"));

    bitFor1Micro = 32 - bitFor1Micro;
    FUNC3(FM_PCD_MANIP_REASM_TIMEOUT_THREAD_THRESH, log2num);
    tsbs = bitFor1Micro - log2num;

    ccReassmTimeoutParams.iprcpt = (uint32_t)(FUNC5(
            h_ReasmCommonPramTbl) - p_FmPcd->physicalMuramBase);
    ccReassmTimeoutParams.tsbs = (uint8_t)tsbs;
    ccReassmTimeoutParams.activate = TRUE;
    if ((err = FUNC2(p_FmPcd->h_Hc, &ccReassmTimeoutParams,
                                      &result)) != E_OK)
        FUNC4(MAJOR, err, NO_MSG);

    switch (result)
    {
        case (0):
            return E_OK;
        case (1):
            FUNC4(MAJOR, E_NO_MEMORY, ("failed to allocate TNUM"));
        case (2):
            FUNC4(
                    MAJOR, E_NO_MEMORY,
                    ("failed to allocate internal buffer from the HC-Port"));
        case (3):
            FUNC4(MAJOR, E_INVALID_VALUE,
                         ("'Disable Timeout Task' with invalid IPRCPT"));
        case (4):
            FUNC4(MAJOR, E_FULL, ("too many timeout tasks"));
        case (5):
            FUNC4(MAJOR, E_INVALID_SELECTION, ("invalid sub command"));
        default:
            FUNC4(MAJOR, E_INVALID_VALUE, NO_MSG);
    }
    return E_OK;
}