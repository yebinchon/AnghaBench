
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int dictSize; } ;
typedef TYPE_1__ contexts_t ;
struct TYPE_8__ {int srcSize; int maxBlockSize; } ;
typedef TYPE_2__ buffers_t ;
typedef int BMK_benchResult_t ;


 scalar_t__ BMK_benchParam (int *,TYPE_2__ const,TYPE_1__ const,int ) ;
 int BMK_printWinner (int ,int ,int ,int ,int ) ;
 int CUSTOM_LEVEL ;
 int DISPLAY (char*) ;
 int ZSTD_getCParams (int const,int ,int ) ;
 int adjustParams (int ,int ,int ) ;
 int cParamsToPVals (int ) ;
 int g_params ;
 int overwriteParams (int ,int ) ;
 int stdout ;

__attribute__((used)) static int
benchOnce(const buffers_t buf, const contexts_t ctx, const int cLevel)
{
    BMK_benchResult_t testResult;
    g_params = adjustParams(overwriteParams(cParamsToPVals(ZSTD_getCParams(cLevel, buf.maxBlockSize, ctx.dictSize)), g_params), buf.maxBlockSize, ctx.dictSize);

    if (BMK_benchParam(&testResult, buf, ctx, g_params)) {
        DISPLAY("Error during benchmarking\n");
        return 1;
    }

    BMK_printWinner(stdout, CUSTOM_LEVEL, testResult, g_params, buf.srcSize);

    return 0;
}
