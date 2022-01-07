
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint16_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_6__ {TYPE_2__* p_FmPcdPlcr; } ;
typedef TYPE_3__ t_FmPcd ;
struct TYPE_5__ {TYPE_1__* portsMapping; } ;
struct TYPE_4__ {size_t profilesBase; } ;


 int HW_PORT_ID_TO_SW_PORT_INDX (size_t,int ) ;

uint16_t FmPcdPlcrGetPortProfilesBase(t_Handle h_FmPcd, uint8_t hardwarePortId)
{
    t_FmPcd *p_FmPcd = (t_FmPcd *)h_FmPcd;
    uint16_t swPortIndex = 0;

    HW_PORT_ID_TO_SW_PORT_INDX(swPortIndex, hardwarePortId);

    return p_FmPcd->p_FmPcdPlcr->portsMapping[swPortIndex].profilesBase;
}
