
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_2__ {scalar_t__ h_Pcd; } ;
typedef TYPE_1__ t_Fm ;


 int E_ALREADY_EXISTS ;
 int MAJOR ;
 int REPORT_ERROR (int ,int ,char*) ;

void FmRegisterPcd(t_Handle h_Fm, t_Handle h_FmPcd)
{
    t_Fm *p_Fm = (t_Fm*)h_Fm;

    if (p_Fm->h_Pcd)
        REPORT_ERROR(MAJOR, E_ALREADY_EXISTS, ("PCD already set"));

    p_Fm->h_Pcd = h_FmPcd;
}
