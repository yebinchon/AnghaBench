
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {scalar_t__* cgsHandles; TYPE_2__* cgrs; } ;
typedef TYPE_3__ t_QmPortal ;
typedef scalar_t__ t_Handle ;
typedef int t_Error ;
struct TYPE_4__ {int* __state; } ;
struct TYPE_5__ {TYPE_1__ q; } ;


 int E_BUSY ;
 int E_OK ;
 int MINOR ;
 int RETURN_ERROR (int ,int ,char*) ;

__attribute__((used)) static t_Error QmPortalRegisterCg(t_Handle h_QmPortal, t_Handle h_QmCg, uint8_t cgId)
{
    t_QmPortal *p_QmPortal = (t_QmPortal *)h_QmPortal;


    if(p_QmPortal->cgrs[0].q.__state[cgId/32] & (0x80000000 >> (cgId % 32)))
        RETURN_ERROR(MINOR, E_BUSY, ("CG already used"));

    p_QmPortal->cgrs[0].q.__state[cgId/32] |= 0x80000000 >> (cgId % 32);
    p_QmPortal->cgsHandles[cgId] = h_QmCg;

    return E_OK;
}
