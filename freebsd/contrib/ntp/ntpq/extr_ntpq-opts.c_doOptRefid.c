
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tOptions ;
struct TYPE_5__ {int argEnum; } ;
struct TYPE_6__ {TYPE_1__ optArg; } ;
typedef TYPE_2__ tOptDesc ;


 int * OPTPROC_EMIT_LIMIT ;

 int optionEnumerationVal (int *,TYPE_2__*,char const* const*,int) ;

__attribute__((used)) static void
doOptRefid(tOptions* pOptions, tOptDesc* pOptDesc)
{


    static char const * const names[2] = {
        128 +1972, 128 +1041 };

    if (pOptions <= OPTPROC_EMIT_LIMIT) {
        (void) optionEnumerationVal(pOptions, pOptDesc, names, 2);
        return;
    }

    pOptDesc->optArg.argEnum =
        optionEnumerationVal(pOptions, pOptDesc, names, 2);
}
