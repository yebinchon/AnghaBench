
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_2__ {int h_App; int (* f_Event ) (int ,int ) ;struct dtsec_regs* p_MemMap; } ;
typedef TYPE_1__ t_Dtsec ;
struct dtsec_regs {int ievent; int imask; } ;


 int DTSEC_IMASK_MMRDEN ;
 int DTSEC_IMASK_MMWREN ;
 int GET_UINT32 (int ) ;
 int WRITE_UINT32 (int ,int) ;
 int e_FM_MAC_EX_1G_MII_MNG_RD_COMPLET ;
 int e_FM_MAC_EX_1G_MII_MNG_WR_COMPLET ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;

__attribute__((used)) static void DtsecMdioIsr(t_Handle h_Dtsec)
{
    t_Dtsec *p_Dtsec = (t_Dtsec *)h_Dtsec;
    uint32_t event;
    struct dtsec_regs *p_DtsecMemMap = p_Dtsec->p_MemMap;

    event = GET_UINT32(p_DtsecMemMap->ievent);

    event &= (DTSEC_IMASK_MMRDEN | DTSEC_IMASK_MMWREN);
    if (event)
    {
        event &= GET_UINT32(p_DtsecMemMap->imask);

        WRITE_UINT32(p_DtsecMemMap->ievent, event);

        if (event & DTSEC_IMASK_MMRDEN)
            p_Dtsec->f_Event(p_Dtsec->h_App, e_FM_MAC_EX_1G_MII_MNG_RD_COMPLET);
        if (event & DTSEC_IMASK_MMWREN)
            p_Dtsec->f_Event(p_Dtsec->h_App, e_FM_MAC_EX_1G_MII_MNG_WR_COMPLET);
    }
}
