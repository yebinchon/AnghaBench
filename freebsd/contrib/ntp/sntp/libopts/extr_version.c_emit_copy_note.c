
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pzBugAddr; int * pzPackager; int * pzCopyNotice; int * pzCopyright; } ;
typedef TYPE_1__ tOptions ;
typedef int FILE ;


 scalar_t__ HAS_pzPkgDataDir (TYPE_1__*) ;
 int NL ;
 int fprintf (int *,char*,int *) ;
 int fputc (int ,int *) ;
 int fputs (int *,int *) ;
 int * optionVersion () ;
 char* zPlsSendBugs ;
 char* zao_ver_fmt ;

__attribute__((used)) static void
emit_copy_note(tOptions * opts, FILE * fp)
{
    if (opts->pzCopyright != ((void*)0))
        fputs(opts->pzCopyright, fp);

    if (opts->pzCopyNotice != ((void*)0))
        fputs(opts->pzCopyNotice, fp);

    fputc(NL, fp);
    fprintf(fp, zao_ver_fmt, optionVersion());

    if (HAS_pzPkgDataDir(opts) && (opts->pzPackager != ((void*)0))) {
        fputc(NL, fp);
        fputs(opts->pzPackager, fp);

    } else if (opts->pzBugAddr != ((void*)0)) {
        fputc(NL, fp);
        fprintf(fp, zPlsSendBugs, opts->pzBugAddr);
    }
}
