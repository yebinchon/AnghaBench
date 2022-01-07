
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int h_Fm; } ;
struct TYPE_5__ {int * p_UnicastAddrHash; int * p_MulticastAddrHash; int macId; TYPE_1__ fmMacControllerDriver; int enetMode; } ;
typedef TYPE_2__ t_Memac ;
typedef scalar_t__ e_FmMacType ;


 scalar_t__ ENET_SPEED_FROM_MODE (int ) ;
 int FmUnregisterIntr (int ,int ,int ,int ) ;
 int FreeHashTable (int *) ;
 scalar_t__ e_ENET_SPEED_10000 ;
 int e_FM_INTR_TYPE_ERR ;
 scalar_t__ e_FM_MAC_10G ;
 scalar_t__ e_FM_MAC_1G ;
 int e_FM_MOD_10G_MAC ;
 int e_FM_MOD_1G_MAC ;

__attribute__((used)) static void FreeInitResources(t_Memac *p_Memac)
{
    e_FmMacType portType;

    portType =
        ((ENET_SPEED_FROM_MODE(p_Memac->enetMode) < e_ENET_SPEED_10000) ? e_FM_MAC_1G : e_FM_MAC_10G);

    if (portType == e_FM_MAC_10G)
        FmUnregisterIntr(p_Memac->fmMacControllerDriver.h_Fm, e_FM_MOD_10G_MAC, p_Memac->macId, e_FM_INTR_TYPE_ERR);
    else
        FmUnregisterIntr(p_Memac->fmMacControllerDriver.h_Fm, e_FM_MOD_1G_MAC, p_Memac->macId, e_FM_INTR_TYPE_ERR);


    FreeHashTable(p_Memac->p_MulticastAddrHash);
    p_Memac->p_MulticastAddrHash = ((void*)0);


    FreeHashTable(p_Memac->p_UnicastAddrHash);
    p_Memac->p_UnicastAddrHash = ((void*)0);
}
