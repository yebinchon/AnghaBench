
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t* vals; } ;
typedef TYPE_1__ paramValues_t ;
struct TYPE_7__ {int tableType; size_t* table; int tableLen; int varLen; int varArray; } ;
typedef TYPE_2__ memoTable_t ;
typedef int U32 ;


 int NUM_PARAMS ;
 int XXH64 (size_t**,int,int ) ;

 size_t memoTableIndDirect (TYPE_1__ const*,int ,int ) ;

 size_t strt_ind ;


__attribute__((used)) static size_t memoTableGet(const memoTable_t* memoTableArray, const paramValues_t p) {
    const memoTable_t mt = memoTableArray[p.vals[strt_ind]];
    switch(mt.tableType) {
        case 130:
            return mt.table[memoTableIndDirect(&p, mt.varArray, mt.varLen)];
        case 128:
            return mt.table[(XXH64(&p.vals, sizeof(U32) * NUM_PARAMS, 0) >> 3) % mt.tableLen];
        case 129:
            return 0;
    }
    return 0;
}
