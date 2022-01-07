
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {double nanoSecPerRun; } ;
struct TYPE_6__ {int runBudget_ns; double nbLoops; unsigned long long timeSpent_ns; TYPE_2__ fastestRun; } ;
typedef int PTime ;
typedef TYPE_1__ BMK_timedFnState_t ;
typedef TYPE_2__ BMK_runTime_t ;
typedef int const BMK_runOutcome_t ;
typedef int BMK_benchParams_t ;


 int const BMK_benchFunction (int ,double) ;
 TYPE_2__ BMK_extract_runTime (int const) ;
 int BMK_isSuccessful_runOutcome (int const) ;
 int const BMK_setValid_runTime (TYPE_2__) ;
 double MIN (double,double) ;
 int assert (int) ;

BMK_runOutcome_t BMK_benchTimedFn(BMK_timedFnState_t* cont,
                                  BMK_benchParams_t p)
{
    PTime const runBudget_ns = cont->runBudget_ns;
    PTime const runTimeMin_ns = runBudget_ns / 2;
    int completed = 0;
    BMK_runTime_t bestRunTime = cont->fastestRun;

    while (!completed) {
        BMK_runOutcome_t const runResult = BMK_benchFunction(p, cont->nbLoops);

        if(!BMK_isSuccessful_runOutcome(runResult)) {
            return runResult;
        }

        { BMK_runTime_t const newRunTime = BMK_extract_runTime(runResult);
            double const loopDuration_ns = newRunTime.nanoSecPerRun * cont->nbLoops;

            cont->timeSpent_ns += (unsigned long long)loopDuration_ns;


            if (loopDuration_ns > (runBudget_ns / 50)) {
                double const fastestRun_ns = MIN(bestRunTime.nanoSecPerRun, newRunTime.nanoSecPerRun);
                cont->nbLoops = (unsigned)(runBudget_ns / fastestRun_ns) + 1;
            } else {

                const unsigned multiplier = 10;
                assert(cont->nbLoops < ((unsigned)-1) / multiplier);
                cont->nbLoops *= multiplier;
            }

            if(loopDuration_ns < runTimeMin_ns) {

                assert(completed == 0);
                continue;
            } else {
                if(newRunTime.nanoSecPerRun < bestRunTime.nanoSecPerRun) {
                    bestRunTime = newRunTime;
                }
                completed = 1;
            }
        }
    }

    return BMK_setValid_runTime(bestRunTime);
}
