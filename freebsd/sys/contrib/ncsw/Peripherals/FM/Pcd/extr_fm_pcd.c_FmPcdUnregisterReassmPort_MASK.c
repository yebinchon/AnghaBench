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
struct TYPE_10__ {int /*<<< orphan*/  activate; scalar_t__ iprcpt; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ t_FmPcdCcReassmTimeoutParams ;
struct TYPE_9__ {int /*<<< orphan*/  h_Hc; scalar_t__ physicalMuramBase; } ;
typedef  TYPE_1__ t_FmPcd ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  E_INVALID_VALUE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int*) ; 
 int /*<<< orphan*/  MAJOR ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 

t_Error FUNC4(t_Handle h_FmPcd, t_Handle h_ReasmCommonPramTbl)
{
    t_FmPcd                         *p_FmPcd = (t_FmPcd*)h_FmPcd;
    t_FmPcdCcReassmTimeoutParams    ccReassmTimeoutParams = {0};
    uint8_t                         result;
    t_Error                         err = E_OK;

    FUNC0(p_FmPcd);
    FUNC0(h_ReasmCommonPramTbl);

    ccReassmTimeoutParams.iprcpt   = (uint32_t)(FUNC3(h_ReasmCommonPramTbl) - p_FmPcd->physicalMuramBase);
    ccReassmTimeoutParams.activate = FALSE; /*Disable Timeout Task*/

    if ((err = FUNC1(p_FmPcd->h_Hc, &ccReassmTimeoutParams, &result)) != E_OK)
        FUNC2(MAJOR, err, NO_MSG);

    switch (result)
    {
        case (0):
            return E_OK;
        case (1):
            FUNC2(MAJOR, E_INVALID_STATE, (""));
        case (2):
            FUNC2(MAJOR, E_INVALID_STATE, (""));
        case (3):
            FUNC2(MAJOR, E_INVALID_HANDLE, ("Disable Timeout Task with invalid IPRCPT"));
        default:
            FUNC2(MAJOR, E_INVALID_VALUE, NO_MSG);
    }

    return E_OK;
}