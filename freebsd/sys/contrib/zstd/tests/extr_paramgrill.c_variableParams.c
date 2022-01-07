
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t varInds_t ;
struct TYPE_3__ {scalar_t__* vals; } ;
typedef TYPE_1__ paramValues_t ;


 size_t NUM_PARAMS ;
 scalar_t__ PARAM_UNSET ;
 size_t fadt_ind ;

__attribute__((used)) static size_t variableParams(const paramValues_t paramConstraints, varInds_t* res, const int usingDictionary) {
    varInds_t i;
    size_t j = 0;
    for(i = 0; i < NUM_PARAMS; i++) {
        if(paramConstraints.vals[i] == PARAM_UNSET) {
            if(i == fadt_ind && !usingDictionary) continue;
            res[j] = i; j++;
        }
    }
    return j;
}
