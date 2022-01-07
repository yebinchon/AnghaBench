
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_9__ {int majorRev; } ;
struct TYPE_13__ {int portType; TYPE_4__* p_FmPortBmiRegs; TYPE_1__ fmRevInfo; int port; } ;
typedef TYPE_5__ t_FmPort ;
struct TYPE_14__ {int errorsDiscardMask; } ;
typedef TYPE_6__ t_FmPcdCtrlParamsPage ;
typedef int t_Error ;
typedef int fmPortFrameErrSelect_t ;
struct TYPE_11__ {int fmbm_ofsdm; } ;
struct TYPE_10__ {int fmbm_rfsdm; } ;
struct TYPE_12__ {TYPE_3__ ohPortBmiRegs; TYPE_2__ rxPortBmiRegs; } ;


 int ASSERT_COND (TYPE_6__*) ;
 int E_INVALID_OPERATION ;
 int E_INVALID_VALUE ;
 int E_OK ;
 int FmPortSetGprFunc (TYPE_5__*,int ,void**) ;
 int GET_UINT32 (int volatile) ;
 int MAJOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 int UNUSED (int volatile*) ;
 int WRITE_UINT32 (int ,int) ;
 int e_FM_PORT_GPR_MURAM_PAGE ;
 int e_FM_PORT_TYPE_OH_OFFLINE_PARSING ;
 int e_FM_PORT_TYPE_RX ;
 int e_FM_PORT_TYPE_RX_10G ;
 int fman_port_set_err_mask (int *,int ) ;

t_Error FM_PORT_SetErrorsRoute(t_Handle h_FmPort, fmPortFrameErrSelect_t errs)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;
    volatile uint32_t *p_ErrDiscard = ((void*)0);
    int err;

    UNUSED(p_ErrDiscard);
    err = fman_port_set_err_mask(&p_FmPort->port, (uint32_t)errs);
    if (err != 0)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("fman_port_set_err_mask"));
    return E_OK;
}
