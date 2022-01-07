
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * vals; } ;
typedef TYPE_1__ paramValues_t ;
struct TYPE_7__ {int strategy; int targetLength; int minMatch; int searchLog; int hashLog; int chainLog; int windowLog; } ;
typedef TYPE_2__ ZSTD_compressionParameters ;


 size_t clog_ind ;
 size_t hlog_ind ;
 int memset (TYPE_2__*,int ,int) ;
 size_t mml_ind ;
 size_t slog_ind ;
 size_t strt_ind ;
 size_t tlen_ind ;
 size_t wlog_ind ;

__attribute__((used)) static ZSTD_compressionParameters pvalsToCParams(paramValues_t p)
{
    ZSTD_compressionParameters c;
    memset(&c, 0, sizeof(ZSTD_compressionParameters));
    c.windowLog = p.vals[wlog_ind];
    c.chainLog = p.vals[clog_ind];
    c.hashLog = p.vals[hlog_ind];
    c.searchLog = p.vals[slog_ind];
    c.minMatch = p.vals[mml_ind];
    c.targetLength = p.vals[tlen_ind];
    c.strategy = p.vals[strt_ind];

    return c;
}
