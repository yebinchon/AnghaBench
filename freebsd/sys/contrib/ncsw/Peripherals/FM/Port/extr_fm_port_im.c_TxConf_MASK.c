#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  size_t uint16_t ;
struct TYPE_6__ {size_t currBdId; int /*<<< orphan*/ * p_BdShadow; int /*<<< orphan*/  (* f_TxConf ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {TYPE_1__ im; int /*<<< orphan*/  h_App; } ;
typedef  TYPE_2__ t_FmPort ;
typedef  scalar_t__ t_Error ;
typedef  int e_TxConfType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int BD_LENGTH_MASK ; 
 int BD_R_E ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ E_BUSY ; 
 scalar_t__ E_OK ; 
 size_t FUNC5 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  TX_CONF_STATUS_UNSENT ; 
 int /*<<< orphan*/  XX_PhysToVirt ; 
 int e_TX_CONF_TYPE_CALLBACK ; 
 int e_TX_CONF_TYPE_FLUSH ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static t_Error FUNC8(t_FmPort *p_FmPort, e_TxConfType confType)
{
    t_Error             retVal = E_BUSY;
    uint32_t            bdStatus;
    uint16_t            savedStartBdId, confBdId;

    FUNC0(p_FmPort);

    /*
    if (confType==e_TX_CONF_TYPE_CHECK)
        return (WfqEntryIsQueueEmpty(p_FmPort->im.h_WfqEntry) ? E_OK : E_BUSY);
    */

    confBdId = savedStartBdId = p_FmPort->im.currBdId;
    bdStatus = FUNC2(FUNC1(confBdId));

    /* If R bit is set, we don't enter, or we break.
       we run till we get to R, or complete the loop */
    while ((!(bdStatus & BD_R_E) || (confType == e_TX_CONF_TYPE_FLUSH)) && (retVal != E_OK))
    {
        if (confType & e_TX_CONF_TYPE_CALLBACK) /* if it is confirmation with user callbacks */
            FUNC3(FUNC1(confBdId), 0);

        /* case 1: R bit is 0 and Length is set -> confirm! */
        if ((confType & e_TX_CONF_TYPE_CALLBACK) && (bdStatus & BD_LENGTH_MASK))
        {
            if (p_FmPort->im.f_TxConf)
            {
                if ((confType == e_TX_CONF_TYPE_FLUSH) && (bdStatus & BD_R_E))
                    p_FmPort->im.f_TxConf(p_FmPort->h_App,
                                          FUNC4(XX_PhysToVirt, FUNC1(confBdId)),
                                          TX_CONF_STATUS_UNSENT,
                                          p_FmPort->im.p_BdShadow[confBdId]);
                else
                    p_FmPort->im.f_TxConf(p_FmPort->h_App,
                                          FUNC4(XX_PhysToVirt, FUNC1(confBdId)),
                                          0,
                                          p_FmPort->im.p_BdShadow[confBdId]);
            }
        }
        /* case 2: R bit is 0 and Length is 0 -> not used yet, nop! */

        confBdId = FUNC5(p_FmPort, confBdId);
        if (confBdId == savedStartBdId)
            retVal = E_OK;
        bdStatus = FUNC2(FUNC1(confBdId));
    }

    return retVal;
}