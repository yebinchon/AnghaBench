
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tSuccess ;
struct TYPE_5__ {int fOptSet; int (* pUsageProc ) (TYPE_1__*,int ) ;int pzProgPath; } ;
typedef TYPE_1__ tOptions ;


 int EXIT_FAILURE ;
 int FAILURE ;
 int OPTPROC_ERRSTOP ;
 int _exit (int ) ;
 int fprintf (int ,char*,int ,char const*,int) ;
 int opt_ambiguities (TYPE_1__*,char const*,int) ;
 int stderr ;
 scalar_t__ strlen (char const*) ;
 int stub1 (TYPE_1__*,int ) ;
 char* zambig_opt_fmt ;

__attribute__((used)) static tSuccess
opt_ambiguous(tOptions * opts, char const * name, int match_ct)
{
    if ((opts->fOptSet & OPTPROC_ERRSTOP) != 0) {
        fprintf(stderr, zambig_opt_fmt, opts->pzProgPath, name, match_ct);
        if (match_ct <= 4)
            opt_ambiguities(opts, name, (int)strlen(name));
        (*opts->pUsageProc)(opts, EXIT_FAILURE);

        _exit(EXIT_FAILURE);
    }
    return FAILURE;
}
