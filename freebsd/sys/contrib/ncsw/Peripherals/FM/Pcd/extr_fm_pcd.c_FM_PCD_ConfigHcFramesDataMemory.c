
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_4__ {struct TYPE_4__* h_Hc; } ;
typedef TYPE_1__ t_FmPcd ;
typedef int t_Error ;


 int E_INVALID_HANDLE ;
 int FmHcSetFramesDataMemory (TYPE_1__*,int ) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;

t_Error FM_PCD_ConfigHcFramesDataMemory(t_Handle h_FmPcd, uint8_t memId)
{
    t_FmPcd *p_FmPcd = (t_FmPcd*)h_FmPcd;

    SANITY_CHECK_RETURN_ERROR(p_FmPcd, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_FmPcd->h_Hc, E_INVALID_HANDLE);

    return FmHcSetFramesDataMemory(p_FmPcd->h_Hc, memId);
}
