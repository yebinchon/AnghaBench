
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* const table; } ;
typedef TYPE_1__ memoTable_t ;


 scalar_t__ ZSTD_STRATEGY_MAX ;
 int free (TYPE_1__* const) ;

__attribute__((used)) static void freeMemoTableArray(memoTable_t* const mtAll) {
    int i;
    if(mtAll == ((void*)0)) { return; }
    for(i = 1; i <= (int)ZSTD_STRATEGY_MAX; i++) {
        free(mtAll[i].table);
    }
    free(mtAll);
}
