
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ macId; scalar_t__ addr; TYPE_1__* p_TgecDriverParam; int f_Event; int f_Exception; int enetMode; } ;
typedef TYPE_2__ t_Tgec ;
typedef int t_Error ;
struct TYPE_4__ {int no_length_check_enable; } ;


 scalar_t__ ENET_SPEED_FROM_MODE (int ) ;
 int E_INVALID_VALUE ;
 int E_NOT_SUPPORTED ;
 int E_OK ;
 scalar_t__ FM_MAX_NUM_OF_10G_MACS ;
 int MAJOR ;
 int MINOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 scalar_t__ e_ENET_SPEED_10000 ;

__attribute__((used)) static t_Error CheckInitParameters(t_Tgec *p_Tgec)
{
    if (ENET_SPEED_FROM_MODE(p_Tgec->enetMode) < e_ENET_SPEED_10000)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("Ethernet 10G MAC driver only support 10G speed"));





    if (p_Tgec->addr == 0)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("Ethernet 10G MAC Must have a valid MAC Address"));
    if (!p_Tgec->f_Exception)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("uninitialized f_Exception"));
    if (!p_Tgec->f_Event)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("uninitialized f_Event"));




    return E_OK;
}
