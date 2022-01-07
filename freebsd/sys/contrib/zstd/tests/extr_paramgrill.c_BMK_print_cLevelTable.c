
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int result; int params; } ;
typedef TYPE_1__ winnerInfo_t ;
typedef int FILE ;


 int BMK_print_cLevelEntry (int *,int,int ,int ,size_t const) ;
 int NB_LEVELS_TRACKED ;
 int fprintf (int *,char*) ;

__attribute__((used)) static void
BMK_print_cLevelTable(FILE* f, const winnerInfo_t* winners, const size_t srcSize)
{
    int cLevel;

    fprintf(f, "\n /* Proposed configurations : */ \n");
    fprintf(f, "   /* W,  C,  H,  S,  L,  T, strat */ \n");

    for (cLevel=0; cLevel <= NB_LEVELS_TRACKED; cLevel++)
        BMK_print_cLevelEntry(f,
                              cLevel, winners[cLevel].params,
                              winners[cLevel].result, srcSize);
}
