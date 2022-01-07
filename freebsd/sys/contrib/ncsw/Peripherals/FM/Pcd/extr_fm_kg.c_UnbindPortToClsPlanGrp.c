
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int t_FmPcd ;


 int KgWriteCpp (int *,int ,int ) ;

__attribute__((used)) static void UnbindPortToClsPlanGrp(t_FmPcd *p_FmPcd, uint8_t hardwarePortId)
{
    KgWriteCpp(p_FmPcd, hardwarePortId, 0);
}
