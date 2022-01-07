
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t varInds_t ;
struct TYPE_4__ {scalar_t__* vals; } ;
typedef TYPE_1__ paramValues_t ;


 size_t NUM_PARAMS ;
 scalar_t__ PARAM_UNSET ;
 scalar_t__* mintable ;

__attribute__((used)) static paramValues_t cParamUnsetMin(paramValues_t paramTarget)
{
    varInds_t vi;
    for (vi = 0; vi < NUM_PARAMS; vi++) {
        if (paramTarget.vals[vi] == PARAM_UNSET) {
            paramTarget.vals[vi] = mintable[vi];
        }
    }
    return paramTarget;
}
