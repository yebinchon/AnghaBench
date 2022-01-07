
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_Handle ;
typedef int t_Error ;


 int FmPcdManipInitUpdate (int ,int ,int ,int ,int ,int,int,int ) ;
 int FmPcdManipModifyUpdate (int ,int ,int,int,int ) ;

t_Error FmPcdManipUpdate(t_Handle h_FmPcd, t_Handle h_PcdParams,
                         t_Handle h_FmPort, t_Handle h_Manip, t_Handle h_Ad,
                         bool validate, int level, t_Handle h_FmTree,
                         bool modify)
{
    t_Error err;

    if (!modify)
        err = FmPcdManipInitUpdate(h_FmPcd, h_PcdParams, h_FmPort, h_Manip,
                                   h_Ad, validate, level, h_FmTree);
    else
        err = FmPcdManipModifyUpdate(h_Manip, h_Ad, validate, level, h_FmTree);

    return err;
}
