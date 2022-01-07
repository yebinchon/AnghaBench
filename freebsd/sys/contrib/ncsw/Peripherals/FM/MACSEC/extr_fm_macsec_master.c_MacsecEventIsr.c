
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_7__ {TYPE_1__* intrMng; TYPE_2__* p_FmMacsecRegs; } ;
typedef TYPE_3__ t_FmMacsec ;
struct TYPE_6__ {int evr; int ever; } ;
struct TYPE_5__ {int h_SrcHandle; int (* f_Isr ) (int ,scalar_t__) ;} ;


 int E_INVALID_HANDLE ;
 scalar_t__ FM_MACSEC_EV_TX_SC_NEXT_PN (scalar_t__) ;
 int GET_MACSEC_MODULE_EVENT (int ,scalar_t__,int ,scalar_t__) ;
 scalar_t__ GET_UINT32 (int ) ;
 scalar_t__ NUM_OF_TX_SC ;
 int SANITY_CHECK_RETURN (TYPE_3__*,int ) ;
 int WRITE_UINT32 (int ,scalar_t__) ;
 int e_FM_INTR_TYPE_NORMAL ;
 int e_FM_MACSEC_MOD_SC_TX ;
 int stub1 (int ,scalar_t__) ;

__attribute__((used)) static void MacsecEventIsr(t_Handle h_FmMacsec)
{
    t_FmMacsec *p_FmMacsec = (t_FmMacsec*)h_FmMacsec;
    uint32_t events,event,i;

    SANITY_CHECK_RETURN(p_FmMacsec, E_INVALID_HANDLE);

    events = GET_UINT32(p_FmMacsec->p_FmMacsecRegs->evr);
    events |= GET_UINT32(p_FmMacsec->p_FmMacsecRegs->ever);
    WRITE_UINT32(p_FmMacsec->p_FmMacsecRegs->evr,events);

    for (i=0; i<NUM_OF_TX_SC; i++)
        if (events & FM_MACSEC_EV_TX_SC_NEXT_PN(i))
        {
            GET_MACSEC_MODULE_EVENT(e_FM_MACSEC_MOD_SC_TX, i, e_FM_INTR_TYPE_NORMAL, event);
            p_FmMacsec->intrMng[event].f_Isr(p_FmMacsec->intrMng[event].h_SrcHandle, i);
        }
}
