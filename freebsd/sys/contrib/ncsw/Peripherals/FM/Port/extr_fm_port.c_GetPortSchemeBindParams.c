
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_4__ {int schemesPerPortVector; int useClsPlan; int hardwarePortId; int netEnvId; } ;
typedef TYPE_1__ t_FmPort ;
struct TYPE_5__ {size_t numOfSchemes; scalar_t__* schemesIds; int useClsPlan; int hardwarePortId; int netEnvId; } ;
typedef TYPE_2__ t_FmPcdKgInterModuleBindPortToSchemes ;



__attribute__((used)) static uint32_t GetPortSchemeBindParams(
        t_Handle h_FmPort, t_FmPcdKgInterModuleBindPortToSchemes *p_SchemeBind)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;
    uint32_t walking1Mask = 0x80000000, tmp;
    uint8_t idx = 0;

    p_SchemeBind->netEnvId = p_FmPort->netEnvId;
    p_SchemeBind->hardwarePortId = p_FmPort->hardwarePortId;
    p_SchemeBind->useClsPlan = p_FmPort->useClsPlan;
    p_SchemeBind->numOfSchemes = 0;
    tmp = p_FmPort->schemesPerPortVector;
    if (tmp)
    {
        while (tmp)
        {
            if (tmp & walking1Mask)
            {
                p_SchemeBind->schemesIds[p_SchemeBind->numOfSchemes] = idx;
                p_SchemeBind->numOfSchemes++;
                tmp &= ~walking1Mask;
            }
            walking1Mask >>= 1;
            idx++;
        }
    }

    return tmp;
}
