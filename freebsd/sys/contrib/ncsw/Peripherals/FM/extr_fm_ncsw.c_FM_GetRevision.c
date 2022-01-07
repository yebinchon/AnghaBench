
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_8__ {int minorRev; int majorRev; } ;
typedef TYPE_3__ t_FmRevisionInfo ;
struct TYPE_9__ {TYPE_2__* p_FmStateStruct; } ;
typedef TYPE_4__ t_Fm ;
typedef int t_Error ;
struct TYPE_6__ {int minorRev; int majorRev; } ;
struct TYPE_7__ {TYPE_1__ revInfo; } ;


 int E_OK ;

t_Error FM_GetRevision(t_Handle h_Fm, t_FmRevisionInfo *p_FmRevisionInfo)
{
    t_Fm *p_Fm = (t_Fm*)h_Fm;

    p_FmRevisionInfo->majorRev = p_Fm->p_FmStateStruct->revInfo.majorRev;
    p_FmRevisionInfo->minorRev = p_Fm->p_FmStateStruct->revInfo.minorRev;

    return E_OK;
}
