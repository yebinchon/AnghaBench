
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ varInds_t ;
typedef scalar_t__ ZSTD_strategy ;


 scalar_t__ const ZSTD_btopt ;
 scalar_t__ const ZSTD_dfast ;
 scalar_t__ const ZSTD_fast ;
 scalar_t__ const clog_ind ;
 scalar_t__ const slog_ind ;
 scalar_t__ const tlen_ind ;

__attribute__((used)) static size_t sanitizeVarArray(varInds_t* varNew, const size_t varLength, const varInds_t* varArray, const ZSTD_strategy strat) {
    size_t i, j = 0;
    for(i = 0; i < varLength; i++) {
        if( !((varArray[i] == clog_ind && strat == ZSTD_fast)
            || (varArray[i] == slog_ind && strat == ZSTD_fast)
            || (varArray[i] == slog_ind && strat == ZSTD_dfast)
            || (varArray[i] == tlen_ind && strat < ZSTD_btopt && strat != ZSTD_fast))) {
            varNew[j] = varArray[i];
            j++;
        }
    }
    return j;
}
