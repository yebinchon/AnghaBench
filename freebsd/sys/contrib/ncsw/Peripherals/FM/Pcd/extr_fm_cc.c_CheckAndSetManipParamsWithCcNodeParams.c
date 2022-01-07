
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int t_Handle ;
struct TYPE_7__ {int numOfKeys; TYPE_2__* keyAndNextEngineParams; } ;
typedef TYPE_3__ t_FmPcdCcNode ;
typedef scalar_t__ t_Error ;
struct TYPE_5__ {scalar_t__ h_Manip; } ;
struct TYPE_6__ {TYPE_1__ nextEngineParams; } ;


 scalar_t__ E_OK ;
 scalar_t__ FmPcdManipCheckParamsWithCcNodeParams (scalar_t__,int ) ;

__attribute__((used)) static t_Error CheckAndSetManipParamsWithCcNodeParams(t_FmPcdCcNode *p_CcNode)
{
    t_Error err = E_OK;
    int i = 0;

    for (i = 0; i < p_CcNode->numOfKeys; i++)
    {
        if (p_CcNode->keyAndNextEngineParams[i].nextEngineParams.h_Manip)
        {
            err =
                    FmPcdManipCheckParamsWithCcNodeParams(
                            p_CcNode->keyAndNextEngineParams[i].nextEngineParams.h_Manip,
                            (t_Handle)p_CcNode);
            if (err)
                return err;
        }
    }

    return err;
}
