
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int t_FmPcd ;
typedef int t_Error ;


 int BuildCppReg (int *,int ) ;
 int KgWriteCpp (int *,int ,int ) ;

__attribute__((used)) static t_Error BindPortToClsPlanGrp(t_FmPcd *p_FmPcd, uint8_t hardwarePortId, uint8_t clsPlanGrpId)
{
    uint32_t tmpKgpeCpp = 0;

    tmpKgpeCpp = BuildCppReg(p_FmPcd, clsPlanGrpId);
    return KgWriteCpp(p_FmPcd, hardwarePortId, tmpKgpeCpp);
}
