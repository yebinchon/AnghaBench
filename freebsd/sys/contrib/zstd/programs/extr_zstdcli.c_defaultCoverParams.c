
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int params ;
struct TYPE_4__ {int d; int steps; double splitPoint; int shrinkDictMaxRegression; scalar_t__ shrinkDict; } ;
typedef TYPE_1__ ZDICT_cover_params_t ;


 int kDefaultRegression ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static ZDICT_cover_params_t defaultCoverParams(void)
{
    ZDICT_cover_params_t params;
    memset(&params, 0, sizeof(params));
    params.d = 8;
    params.steps = 4;
    params.splitPoint = 1.0;
    params.shrinkDict = 0;
    params.shrinkDictMaxRegression = kDefaultRegression;
    return params;
}
