
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_3__ {int h_App; int (* f_Exception ) (int ,int ) ;int h_Fm; } ;
typedef TYPE_1__ t_FmPort ;


 int ASSERT_COND (int) ;
 scalar_t__ FmIsMaster (int ) ;
 int FmPortImRx (TYPE_1__*) ;
 int IM_EV_BSY ;
 int IM_EV_RX ;
 int e_FM_PORT_EXCEPTION_IM_BUSY ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void ImException(t_Handle h_FmPort, uint32_t event)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;

    ASSERT_COND(((event & (IM_EV_RX | IM_EV_BSY)) && FmIsMaster(p_FmPort->h_Fm)) ||
                !FmIsMaster(p_FmPort->h_Fm));

    if (event & IM_EV_RX)
        FmPortImRx(p_FmPort);
    if ((event & IM_EV_BSY) && p_FmPort->f_Exception)
        p_FmPort->f_Exception(p_FmPort->h_App, e_FM_PORT_EXCEPTION_IM_BUSY);
}
