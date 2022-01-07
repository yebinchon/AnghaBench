
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int h_Fm; } ;
struct TYPE_5__ {scalar_t__ mdioIrq; int * p_UnicastAddrHash; int * p_MulticastAddrHash; int macId; TYPE_1__ fmMacControllerDriver; } ;
typedef TYPE_2__ t_Tgec ;


 int FmUnregisterIntr (int ,int ,int ,int ) ;
 int FreeHashTable (int *) ;
 scalar_t__ NO_IRQ ;
 int XX_DisableIntr (scalar_t__) ;
 int XX_FreeIntr (scalar_t__) ;
 int e_FM_INTR_TYPE_ERR ;
 int e_FM_MOD_10G_MAC ;

__attribute__((used)) static void FreeInitResources(t_Tgec *p_Tgec)
{
    if (p_Tgec->mdioIrq != NO_IRQ)
    {
        XX_DisableIntr(p_Tgec->mdioIrq);
        XX_FreeIntr(p_Tgec->mdioIrq);
    }

    FmUnregisterIntr(p_Tgec->fmMacControllerDriver.h_Fm, e_FM_MOD_10G_MAC, p_Tgec->macId, e_FM_INTR_TYPE_ERR);


    FreeHashTable(p_Tgec->p_MulticastAddrHash);
    p_Tgec->p_MulticastAddrHash = ((void*)0);


    FreeHashTable(p_Tgec->p_UnicastAddrHash);
    p_Tgec->p_UnicastAddrHash = ((void*)0);
}
