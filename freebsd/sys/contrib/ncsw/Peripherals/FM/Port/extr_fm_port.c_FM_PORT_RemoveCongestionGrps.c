
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_9__ {int majorRev; } ;
typedef TYPE_2__ t_FmRevisionInfo ;
struct TYPE_10__ {size_t numOfCongestionGrpsToConsider; int* congestionGrpsToConsider; } ;
typedef TYPE_3__ t_FmPortCongestionGrps ;
struct TYPE_8__ {int majorRev; } ;
struct TYPE_11__ {scalar_t__ portType; int port; int h_Fm; TYPE_1__ fmRevInfo; } ;
typedef TYPE_4__ t_FmPort ;
typedef scalar_t__ t_Error ;


 int E_INVALID_HANDLE ;
 int E_INVALID_VALUE ;
 int E_NOT_SUPPORTED ;
 scalar_t__ E_OK ;
 int FMAN_PORT_CG_MAP_NUM ;
 int FM_GetRevision (int ,TYPE_2__*) ;
 scalar_t__ FmSetCongestionGroupPFCpriority (int ,int,int ) ;
 int MAJOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_4__*,int ) ;
 scalar_t__ e_FM_PORT_TYPE_OH_OFFLINE_PARSING ;
 scalar_t__ e_FM_PORT_TYPE_RX ;
 scalar_t__ e_FM_PORT_TYPE_RX_10G ;
 int fman_port_remove_congestion_grps (int *,size_t*) ;
 int memset (size_t*,int ,int) ;

t_Error FM_PORT_RemoveCongestionGrps(t_Handle h_FmPort,
                                     t_FmPortCongestionGrps *p_CongestionGrps)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;
    uint8_t mod, index;
    uint32_t i, grpsMap[FMAN_PORT_CG_MAP_NUM];
    int err;

    SANITY_CHECK_RETURN_ERROR(p_FmPort, E_INVALID_HANDLE);

    {
        if ((p_FmPort->portType != e_FM_PORT_TYPE_RX_10G)
                && (p_FmPort->portType != e_FM_PORT_TYPE_RX)
                && (p_FmPort->portType != e_FM_PORT_TYPE_OH_OFFLINE_PARSING))
            RETURN_ERROR(MAJOR, E_NOT_SUPPORTED,
                         ("Available for Rx & OP ports only"));
    }


    memset(grpsMap, 0, FMAN_PORT_CG_MAP_NUM * sizeof(uint32_t));
    for (i = 0; i < p_CongestionGrps->numOfCongestionGrpsToConsider; i++)
    {
        index = (uint8_t)(p_CongestionGrps->congestionGrpsToConsider[i] / 32);
        mod = (uint8_t)(p_CongestionGrps->congestionGrpsToConsider[i] % 32);
        if (p_FmPort->fmRevInfo.majorRev != 4)
            grpsMap[7 - index] |= (uint32_t)(1 << mod);
        else
            grpsMap[0] |= (uint32_t)(1 << mod);
    }
    err = fman_port_remove_congestion_grps(&p_FmPort->port, grpsMap);
    if (err != 0)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE,
                     ("fman_port_remove_congestion_grps"));
    return E_OK;
}
