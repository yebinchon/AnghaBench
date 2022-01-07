
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pzBugAddr; int * pzPackager; int pzUsageTitle; int * pzFullVersion; int * pzCopyright; } ;
typedef TYPE_1__ tOptions ;
typedef int FILE ;


 scalar_t__ HAS_pzPkgDataDir (TYPE_1__*) ;
 int NL ;
 int emit_first_line (int *,int ,int *,int *) ;
 int fprintf (int *,char*,int *) ;
 int fputc (int ,int *) ;
 int fputs (int *,int *) ;
 char* zPlsSendBugs ;

__attribute__((used)) static void
emit_copy_full(tOptions * o, FILE * fp)
{
    if (o->pzCopyright != ((void*)0))
        fputs(o->pzCopyright, fp);

    else if (o->pzFullVersion != ((void*)0))
        fputs(o->pzFullVersion, fp);

    else
        emit_first_line(fp, o->pzUsageTitle, ((void*)0), ((void*)0));

    if (HAS_pzPkgDataDir(o) && (o->pzPackager != ((void*)0))) {
        fputc(NL, fp);
        fputs(o->pzPackager, fp);

    } else if (o->pzBugAddr != ((void*)0)) {
        fputc(NL, fp);
        fprintf(fp, zPlsSendBugs, o->pzBugAddr);
    }
}
