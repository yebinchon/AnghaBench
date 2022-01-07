
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int presetOptCt; int * pOptDesc; } ;
typedef TYPE_1__ tOptions ;
typedef int tOptDesc ;


 int optionReset (TYPE_1__*,int *) ;

__attribute__((used)) static void
optionResetEverything(tOptions * pOpts)
{
    tOptDesc * pOD = pOpts->pOptDesc;
    int ct = pOpts->presetOptCt;

    for (;;) {
        optionReset(pOpts, pOD);

        if (--ct <= 0)
            break;
        pOD++;
    }
}
