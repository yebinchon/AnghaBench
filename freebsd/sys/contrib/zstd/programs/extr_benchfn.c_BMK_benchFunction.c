
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UTIL_time_t ;
struct TYPE_6__ {size_t blockCount; size_t (* benchFn ) (int ,scalar_t__,int ,int ,int ) ;size_t* blockResults; scalar_t__* srcSizes; scalar_t__ (* errorFn ) (size_t const) ;int benchPayload; int * dstCapacities; int * dstBuffers; int * srcBuffers; int initPayload; int (* initFn ) (int ) ;} ;
struct TYPE_5__ {double nanoSecPerRun; size_t sumOfReturn; } ;
typedef scalar_t__ PTime ;
typedef TYPE_1__ BMK_runTime_t ;
typedef int BMK_runOutcome_t ;
typedef TYPE_2__ BMK_benchParams_t ;


 int BMK_runOutcome_error (size_t const) ;
 int BMK_setValid_runTime (TYPE_1__) ;
 int RETURN_QUIET_ERROR (int ,char*,unsigned int,unsigned int,int) ;
 scalar_t__ UTIL_clockSpanNano (int const) ;
 int UTIL_getTime () ;
 int memset (int ,int,int ) ;
 int stub1 (int ) ;
 size_t stub2 (int ,scalar_t__,int ,int ,int ) ;
 scalar_t__ stub3 (size_t const) ;

BMK_runOutcome_t BMK_benchFunction(BMK_benchParams_t p,
                                   unsigned nbLoops)
{
    size_t dstSize = 0;
    nbLoops += !nbLoops;


    { size_t i;
        for(i = 0; i < p.blockCount; i++) {
            memset(p.dstBuffers[i], 0xE5, p.dstCapacities[i]);
    } }


    { UTIL_time_t const clockStart = UTIL_getTime();
        unsigned loopNb, blockNb;
        if (p.initFn != ((void*)0)) p.initFn(p.initPayload);
        for (loopNb = 0; loopNb < nbLoops; loopNb++) {
            for (blockNb = 0; blockNb < p.blockCount; blockNb++) {
                size_t const res = p.benchFn(p.srcBuffers[blockNb], p.srcSizes[blockNb],
                                   p.dstBuffers[blockNb], p.dstCapacities[blockNb],
                                   p.benchPayload);
                if (loopNb == 0) {
                    if (p.blockResults != ((void*)0)) p.blockResults[blockNb] = res;
                    if ((p.errorFn != ((void*)0)) && (p.errorFn(res))) {
                        RETURN_QUIET_ERROR(BMK_runOutcome_error(res),
                            "Function benchmark failed on block %u (of size %u) with error %i",
                            blockNb, (unsigned)p.srcSizes[blockNb], (int)res);
                    }
                    dstSize += res;
            } }
        }

        { PTime const totalTime = UTIL_clockSpanNano(clockStart);
            BMK_runTime_t rt;
            rt.nanoSecPerRun = (double)totalTime / nbLoops;
            rt.sumOfReturn = dstSize;
            return BMK_setValid_runTime(rt);
    } }
}
