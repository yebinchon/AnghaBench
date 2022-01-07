
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__* vals; } ;
struct TYPE_10__ {TYPE_2__ const params; } ;
typedef TYPE_1__ winnerInfo_t ;
typedef TYPE_2__ paramValues_t ;
typedef int contexts_t ;
struct TYPE_12__ {int srcSize; } ;
typedef TYPE_3__ buffers_t ;
typedef size_t U32 ;
typedef int FILE ;


 int FUZ_rand (int *) ;
 int NB_LEVELS_TRACKED ;
 TYPE_2__ adjustParams (int ,int ,int ) ;
 int cParamsToPVals (int ) ;
 int g_rand ;
 int playAround (int *,TYPE_1__*,TYPE_2__ const,TYPE_3__ const,int const) ;
 int pvalsToCParams (int ) ;
 int randomParams () ;
 size_t wlog_ind ;

__attribute__((used)) static void
BMK_selectRandomStart( FILE* f,
                       winnerInfo_t* winners,
                       const buffers_t buf, const contexts_t ctx)
{
    U32 const id = FUZ_rand(&g_rand) % (NB_LEVELS_TRACKED+1);
    if ((id==0) || (winners[id].params.vals[wlog_ind]==0)) {

        paramValues_t const p = adjustParams(cParamsToPVals(pvalsToCParams(randomParams())),
                                             buf.srcSize, 0);
        playAround(f, winners, p, buf, ctx);
    } else {
        playAround(f, winners, winners[id].params, buf, ctx);
    }
}
