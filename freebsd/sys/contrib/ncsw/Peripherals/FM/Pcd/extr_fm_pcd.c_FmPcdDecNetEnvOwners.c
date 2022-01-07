
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_4__ {TYPE_2__* netEnvs; } ;
typedef TYPE_1__ t_FmPcd ;
struct TYPE_5__ {scalar_t__ owners; } ;


 int ASSERT_COND (scalar_t__) ;
 int NetEnvLock (TYPE_2__*) ;
 int NetEnvUnlock (TYPE_2__*,int ) ;

void FmPcdDecNetEnvOwners(t_Handle h_FmPcd, uint8_t netEnvId)
{
    uint32_t intFlags;

    ASSERT_COND(h_FmPcd);
    ASSERT_COND(((t_FmPcd*)h_FmPcd)->netEnvs[netEnvId].owners);

    intFlags = NetEnvLock(&((t_FmPcd*)h_FmPcd)->netEnvs[netEnvId]);
    ((t_FmPcd*)h_FmPcd)->netEnvs[netEnvId].owners--;
    NetEnvUnlock(&((t_FmPcd*)h_FmPcd)->netEnvs[netEnvId], intFlags);
}
