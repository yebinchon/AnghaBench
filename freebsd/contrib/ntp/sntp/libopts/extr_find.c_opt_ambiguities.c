
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int optCt; TYPE_2__* pOptDesc; } ;
typedef TYPE_1__ tOptions ;
struct TYPE_6__ {int * pz_DisableName; int * pz_Name; } ;
typedef TYPE_2__ tOptDesc ;


 char* LONG_OPT_MARKER ;
 scalar_t__ NAMED_OPTS (TYPE_1__*) ;
 int fprintf (int ,char*,char const* const,int *) ;
 int fputs (int ,int ) ;
 int stderr ;
 scalar_t__ strneqvcmp (char const*,int *,int) ;
 char* zambig_file ;
 int zambig_list_msg ;

__attribute__((used)) static void
opt_ambiguities(tOptions * opts, char const * name, int nm_len)
{
    char const * const hyph =
        NAMED_OPTS(opts) ? "" : LONG_OPT_MARKER;

    tOptDesc * pOD = opts->pOptDesc;
    int idx = 0;

    fputs(zambig_list_msg, stderr);
    do {
        if (pOD->pz_Name == ((void*)0))
            continue;

        if (strneqvcmp(name, pOD->pz_Name, nm_len) == 0)
            fprintf(stderr, zambig_file, hyph, pOD->pz_Name);

        else if ( (pOD->pz_DisableName != ((void*)0))
                && (strneqvcmp(name, pOD->pz_DisableName, nm_len) == 0)
                )
            fprintf(stderr, zambig_file, hyph, pOD->pz_DisableName);
    } while (pOD++, (++idx < opts->optCt));
}
