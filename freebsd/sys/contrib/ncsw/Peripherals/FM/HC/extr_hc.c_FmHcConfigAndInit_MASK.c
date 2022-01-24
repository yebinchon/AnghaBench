#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  t_HcFrame ;
typedef  int /*<<< orphan*/ * t_Handle ;
struct TYPE_13__ {int /*<<< orphan*/  qmChannel; int /*<<< orphan*/  dfltFqid; int /*<<< orphan*/  errFqid; } ;
struct TYPE_14__ {TYPE_1__ nonRxParams; } ;
struct TYPE_16__ {int /*<<< orphan*/  h_HcPortDev; TYPE_2__ specificParams; int /*<<< orphan*/  h_Fm; int /*<<< orphan*/  liodnBase; int /*<<< orphan*/  portId; int /*<<< orphan*/  portType; int /*<<< orphan*/  baseAddr; int /*<<< orphan*/  dataMemId; int /*<<< orphan*/  h_QmArg; int /*<<< orphan*/  f_QmEnqueue; int /*<<< orphan*/  h_FmPcd; } ;
typedef  TYPE_4__ t_FmPortParams ;
struct TYPE_15__ {int /*<<< orphan*/  qmChannel; int /*<<< orphan*/  confFqid; int /*<<< orphan*/  errFqid; int /*<<< orphan*/  liodnBase; int /*<<< orphan*/  portId; int /*<<< orphan*/  portBaseAddr; int /*<<< orphan*/  h_QmArg; int /*<<< orphan*/  f_QmEnqueue; } ;
struct TYPE_17__ {TYPE_3__ params; int /*<<< orphan*/  h_Fm; int /*<<< orphan*/  h_FmPcd; } ;
typedef  TYPE_5__ t_FmHcParams ;
typedef  TYPE_4__ t_FmHc ;
typedef  scalar_t__ t_Error ;
typedef  int /*<<< orphan*/  fmPortParam ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_dataMemId ; 
 scalar_t__ E_INVALID_HANDLE ; 
 scalar_t__ E_NO_MEMORY ; 
 scalar_t__ E_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  MINOR ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  e_FM_PORT_TYPE_OH_HOST_COMMAND ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 

t_Handle FUNC11(t_FmHcParams *p_FmHcParams)
{
    t_FmHc          *p_FmHc;
    t_FmPortParams  fmPortParam;
    t_Error         err;

    p_FmHc = (t_FmHc *)FUNC9(sizeof(t_FmHc));
    if (!p_FmHc)
    {
        FUNC7(MINOR, E_NO_MEMORY, ("HC obj"));
        return NULL;
    }
    FUNC10(p_FmHc,0,sizeof(t_FmHc));

    p_FmHc->h_FmPcd             = p_FmHcParams->h_FmPcd;
    p_FmHc->f_QmEnqueue         = p_FmHcParams->params.f_QmEnqueue;
    p_FmHc->h_QmArg             = p_FmHcParams->params.h_QmArg;
    p_FmHc->dataMemId           = DEFAULT_dataMemId;

    err = FUNC4(p_FmHc);
    if (err != E_OK)
    {
        FUNC7(MAJOR, err, NO_MSG);
        FUNC5(p_FmHc);
        return NULL;
    }

    if (!FUNC6(p_FmHcParams->h_Fm))
        return (t_Handle)p_FmHc;

    FUNC10(&fmPortParam, 0, sizeof(fmPortParam));
    fmPortParam.baseAddr    = p_FmHcParams->params.portBaseAddr;
    fmPortParam.portType    = e_FM_PORT_TYPE_OH_HOST_COMMAND;
    fmPortParam.portId      = p_FmHcParams->params.portId;
    fmPortParam.liodnBase   = p_FmHcParams->params.liodnBase;
    fmPortParam.h_Fm        = p_FmHcParams->h_Fm;

    fmPortParam.specificParams.nonRxParams.errFqid      = p_FmHcParams->params.errFqid;
    fmPortParam.specificParams.nonRxParams.dfltFqid     = p_FmHcParams->params.confFqid;
    fmPortParam.specificParams.nonRxParams.qmChannel    = p_FmHcParams->params.qmChannel;

    p_FmHc->h_HcPortDev = FUNC0(&fmPortParam);
    if (!p_FmHc->h_HcPortDev)
    {
        FUNC7(MAJOR, E_INVALID_HANDLE, ("FM HC port!"));
        FUNC8(p_FmHc);
        return NULL;
    }

    err = FUNC1(p_FmHc->h_HcPortDev,
                                       (uint16_t)sizeof(t_HcFrame));

    if (err != E_OK)
    {
        FUNC7(MAJOR, err, ("FM HC port init!"));
        FUNC5(p_FmHc);
        return NULL;
    }

    /* final init */
    err = FUNC3(p_FmHc->h_HcPortDev);
    if (err != E_OK)
    {
        FUNC7(MAJOR, err, ("FM HC port init!"));
        FUNC5(p_FmHc);
        return NULL;
    }

    err = FUNC2(p_FmHc->h_HcPortDev);
    if (err != E_OK)
    {
        FUNC7(MAJOR, err, ("FM HC port enable!"));
        FUNC5(p_FmHc);
        return NULL;
    }

    return (t_Handle)p_FmHc;
}