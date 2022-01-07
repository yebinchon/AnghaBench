
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t varInds_t ;
struct TYPE_7__ {size_t* vals; } ;
typedef TYPE_1__ paramValues_t ;
struct TYPE_8__ {size_t tableLen; size_t* varArray; } ;
typedef TYPE_2__ memoTable_t ;
typedef size_t ZSTD_strategy ;


 int FUZ_rand (int *) ;
 int NUM_PARAMS ;
 int g_rand ;
 int memoTableGet (TYPE_2__ const*,TYPE_1__) ;
 size_t rangeMap (size_t,int) ;
 int* rangetable ;
 size_t strt_ind ;

__attribute__((used)) static void randomConstrainedParams(paramValues_t* pc, const memoTable_t* memoTableArray, const ZSTD_strategy st)
{
    size_t j;
    const memoTable_t mt = memoTableArray[st];
    pc->vals[strt_ind] = st;
    for(j = 0; j < mt.tableLen; j++) {
        int i;
        for(i = 0; i < NUM_PARAMS; i++) {
            varInds_t v = mt.varArray[i];
            if(v == strt_ind) continue;
            pc->vals[v] = rangeMap(v, FUZ_rand(&g_rand) % rangetable[v]);
        }

        if(!(memoTableGet(memoTableArray, *pc))) break;
    }
}
