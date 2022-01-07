
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_2__ {scalar_t__ guestId; } ;
typedef TYPE_1__ t_Fm ;


 scalar_t__ NCSW_MASTER_ID ;

bool FmIsMaster(t_Handle h_Fm)
{
    t_Fm *p_Fm = (t_Fm*)h_Fm;

    return (p_Fm->guestId == NCSW_MASTER_ID);
}
