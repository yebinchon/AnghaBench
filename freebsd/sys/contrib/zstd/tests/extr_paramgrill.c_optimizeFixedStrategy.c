
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int params; int result; } ;
typedef TYPE_1__ winnerInfo_t ;
struct TYPE_17__ {int * vals; } ;
typedef TYPE_2__ paramValues_t ;
typedef int memoTable_t ;
typedef int contexts_t ;
typedef int constraint_t ;
struct TYPE_18__ {int srcSize; int maxBlockSize; } ;
typedef TYPE_3__ buffers_t ;
typedef int ZSTD_strategy ;


 int BMK_printWinnerOpt (int ,int ,int ,int ,int const,int ) ;
 int CHECKTIME (TYPE_1__) ;
 int CUSTOM_LEVEL ;
 int DEBUGOUTPUT (char*) ;
 TYPE_2__ cParamUnsetMin (TYPE_2__) ;
 TYPE_1__ climbOnce (int const,int *,TYPE_3__ const,int const,TYPE_2__) ;
 scalar_t__ compareResultLT (int ,int ,int const,int ) ;
 int emptyParams () ;
 TYPE_1__ initWinnerInfo (int ) ;
 int randomConstrainedParams (TYPE_2__*,int *,int const) ;
 scalar_t__ redundantParams (TYPE_2__,int const,int ) ;
 int stdout ;
 size_t strt_ind ;

__attribute__((used)) static winnerInfo_t
optimizeFixedStrategy(const buffers_t buf, const contexts_t ctx,
                      const constraint_t target, paramValues_t paramTarget,
                      const ZSTD_strategy strat,
                      memoTable_t* memoTableArray, const int tries)
{
    int i = 0;

    paramValues_t init;
    winnerInfo_t winnerInfo, candidateInfo;
    winnerInfo = initWinnerInfo(emptyParams());

    paramTarget.vals[strt_ind] = strat;

    paramTarget = cParamUnsetMin(paramTarget);

    init = paramTarget;

    for(i = 0; i < tries; i++) {
        DEBUGOUTPUT("Restart\n");
        do {
            randomConstrainedParams(&init, memoTableArray, strat);
        } while(redundantParams(init, target, buf.maxBlockSize));
        candidateInfo = climbOnce(target, memoTableArray, buf, ctx, init);
        if (compareResultLT(winnerInfo.result, candidateInfo.result, target, buf.srcSize)) {
            winnerInfo = candidateInfo;
            BMK_printWinnerOpt(stdout, CUSTOM_LEVEL, winnerInfo.result, winnerInfo.params, target, buf.srcSize);
            i = 0;
            continue;
        }
        CHECKTIME(winnerInfo);
        i++;
    }
    return winnerInfo;
}
