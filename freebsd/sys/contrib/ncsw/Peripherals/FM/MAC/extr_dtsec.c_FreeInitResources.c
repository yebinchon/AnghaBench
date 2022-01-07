
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int h_Fm; } ;
struct TYPE_5__ {scalar_t__ mdioIrq; int * p_UnicastAddrHash; int * p_MulticastAddrHash; int macId; TYPE_1__ fmMacControllerDriver; } ;
typedef TYPE_2__ t_Dtsec ;


 int FmUnregisterIntr (int ,int ,int ,int ) ;
 int FreeHashTable (int *) ;
 scalar_t__ NO_IRQ ;
 int XX_DisableIntr (scalar_t__) ;
 int XX_FreeIntr (scalar_t__) ;
 int e_FM_INTR_TYPE_ERR ;
 int e_FM_INTR_TYPE_NORMAL ;
 int e_FM_MOD_1G_MAC ;

__attribute__((used)) static void FreeInitResources(t_Dtsec *p_Dtsec)
{
    if (p_Dtsec->mdioIrq != NO_IRQ)
    {
        XX_DisableIntr(p_Dtsec->mdioIrq);
        XX_FreeIntr(p_Dtsec->mdioIrq);
    }
    FmUnregisterIntr(p_Dtsec->fmMacControllerDriver.h_Fm, e_FM_MOD_1G_MAC, p_Dtsec->macId, e_FM_INTR_TYPE_ERR);
    FmUnregisterIntr(p_Dtsec->fmMacControllerDriver.h_Fm, e_FM_MOD_1G_MAC, p_Dtsec->macId, e_FM_INTR_TYPE_NORMAL);


    FreeHashTable(p_Dtsec->p_MulticastAddrHash);
    p_Dtsec->p_MulticastAddrHash = ((void*)0);


    FreeHashTable(p_Dtsec->p_UnicastAddrHash);
    p_Dtsec->p_UnicastAddrHash = ((void*)0);
}
