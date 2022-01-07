
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ macId; scalar_t__ addr; TYPE_1__* p_MemacDriverParam; int f_Event; int f_Exception; int enetMode; } ;
typedef TYPE_2__ t_Memac ;
typedef int t_Error ;
typedef scalar_t__ e_FmMacType ;
struct TYPE_4__ {int no_length_check_enable; } ;


 scalar_t__ ENET_SPEED_FROM_MODE (int ) ;
 int E_INVALID_VALUE ;
 int E_NOT_SUPPORTED ;
 int E_OK ;
 scalar_t__ FM_MAX_NUM_OF_10G_MACS ;
 scalar_t__ FM_MAX_NUM_OF_1G_MACS ;
 int MAJOR ;
 int MINOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 scalar_t__ e_ENET_SPEED_10000 ;
 scalar_t__ e_FM_MAC_10G ;
 scalar_t__ e_FM_MAC_1G ;

__attribute__((used)) static t_Error CheckInitParameters(t_Memac *p_Memac)
{
    e_FmMacType portType;

    portType = ((ENET_SPEED_FROM_MODE(p_Memac->enetMode) < e_ENET_SPEED_10000) ? e_FM_MAC_1G : e_FM_MAC_10G);






    if ((portType == e_FM_MAC_1G) && (p_Memac->macId >= FM_MAX_NUM_OF_1G_MACS))
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("1G MAC ID must be less than %d", FM_MAX_NUM_OF_1G_MACS));
    if (p_Memac->addr == 0)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("Ethernet MAC must have a valid MAC address"));
    if (!p_Memac->f_Exception)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("Uninitialized f_Exception"));
    if (!p_Memac->f_Event)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("Uninitialized f_Event"));





    return E_OK;
}
