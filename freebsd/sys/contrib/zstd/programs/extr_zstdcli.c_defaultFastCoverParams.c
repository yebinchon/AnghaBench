
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int params ;
struct TYPE_4__ {int d; int f; int steps; double splitPoint; int shrinkDictMaxRegression; scalar_t__ shrinkDict; int accel; } ;
typedef TYPE_1__ ZDICT_fastCover_params_t ;


 int DEFAULT_ACCEL ;
 int kDefaultRegression ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static ZDICT_fastCover_params_t defaultFastCoverParams(void)
{
    ZDICT_fastCover_params_t params;
    memset(&params, 0, sizeof(params));
    params.d = 8;
    params.f = 20;
    params.steps = 4;
    params.splitPoint = 0.75;
    params.accel = DEFAULT_ACCEL;
    params.shrinkDict = 0;
    params.shrinkDictMaxRegression = kDefaultRegression;
    return params;
}
