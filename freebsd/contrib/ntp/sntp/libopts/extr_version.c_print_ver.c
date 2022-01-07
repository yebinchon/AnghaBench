
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int fOptSet; int pzProgName; } ;
typedef TYPE_2__ tOptions ;
struct TYPE_11__ {int* argString; } ;
struct TYPE_13__ {int fOptState; TYPE_1__ optArg; } ;
typedef TYPE_3__ tOptDesc ;
typedef int FILE ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;

 TYPE_2__* OPTPROC_EMIT_LIMIT ;
 int OPTPROC_GNUUSAGE ;
 int OPTST_ARG_OPTIONAL ;
 int emit_copy_full (TYPE_2__*,int *) ;
 int emit_copy_note (TYPE_2__*,int *) ;
 int emit_simple_ver (TYPE_2__*,int *) ;
 scalar_t__ ferror (int *) ;
 int fflush (int *) ;
 int fprintf (int ,char*,char) ;
 int fserr_exit (int ,int ,int ) ;
 int option_exits (int ) ;
 int set_usage_flags (TYPE_2__*,int *) ;
 int stderr ;
 int * stdout ;
 char* zBadVerArg ;
 int zstderr_name ;
 int zstdout_name ;
 int zwriting ;

__attribute__((used)) static void
print_ver(tOptions * opts, tOptDesc * od, FILE * fp, bool call_exit)
{
    char ch;

    if (opts <= OPTPROC_EMIT_LIMIT)
        return;






    if ( (od->fOptState & OPTST_ARG_OPTIONAL)
       && (od->optArg.argString != ((void*)0))
       && (od->optArg.argString[0] != 128))

        ch = od->optArg.argString[0];

    else {
        set_usage_flags(opts, ((void*)0));
        ch = (opts->fOptSet & OPTPROC_GNUUSAGE) ? 'c' : 'v';
    }

    switch (ch) {
    case 128:
    case 'v': case 'V': emit_simple_ver(opts, fp); break;
    case 'c': case 'C': emit_copy_full( opts, fp); break;
    case 'n': case 'N': emit_copy_note( opts, fp); break;

    default:
        fprintf(stderr, zBadVerArg, ch);
        option_exits(EXIT_FAILURE);
    }

    fflush(fp);
    if (ferror(fp))
        fserr_exit(opts->pzProgName, zwriting,
                   (fp == stdout) ? zstdout_name : zstderr_name);

    if (call_exit)
        option_exits(EXIT_SUCCESS);
}
