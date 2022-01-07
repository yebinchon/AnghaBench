
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int fOptSet; char const* pzExplain; char const* pzPackager; int pzProgName; int * pzBugAddr; TYPE_1__* pOptDesc; } ;
typedef TYPE_2__ tOptions ;
struct TYPE_10__ {int fOptState; } ;


 int EXIT_SUCCESS ;
 scalar_t__ HAS_pzPkgDataDir (TYPE_2__*) ;
 int NL ;


 int OPTPROC_NUM_OPT ;
 int OPTPROC_REORDER ;

 int OPTST_DOCUMENT ;
 scalar_t__ do_gnu_usage (TYPE_2__*) ;
 scalar_t__ ferror (scalar_t__) ;
 int fflush (scalar_t__) ;
 int fprintf (scalar_t__,char*,int *) ;
 int fputc (int ,scalar_t__) ;
 int fputs (char const*,scalar_t__) ;
 int fserr_exit (int ,int ,int ) ;
 int line_fmt_buf ;
 scalar_t__ option_usage_fp ;
 int prt_opt_usage (TYPE_2__*,int,char const*) ;
 int prt_prog_detail (TYPE_2__*) ;
 int setGnuOptFmts (TYPE_2__*,char const**) ;
 int setStdOptFmts (TYPE_2__*,char const**) ;
 int sprintf (int ,char*,int) ;
 scalar_t__ stderr ;
 int tab_skip_ct ;
 char const* zFlagOkay ;
 char* zFmtFmt ;
 char const* zNoFlags ;
 char const* zNumberOpt ;
 char const* zOptsOnly ;
 char* zPlsSendBugs ;
 char const* zReorder ;
 int zstderr_name ;
 int zstdout_name ;
 int zwriting ;

__attribute__((used)) static void
print_usage_details(tOptions * opts, int exit_code)
{
    {
        char const * pOptTitle = ((void*)0);
        int flen;




        if (do_gnu_usage(opts)) {
            flen = setGnuOptFmts(opts, &pOptTitle);
            sprintf(line_fmt_buf, zFmtFmt, flen);
            fputc(NL, option_usage_fp);
        }
        else {
            flen = setStdOptFmts(opts, &pOptTitle);
            sprintf(line_fmt_buf, zFmtFmt, flen);






            if ( (exit_code != EXIT_SUCCESS)
               || ((opts->pOptDesc->fOptState & OPTST_DOCUMENT) == 0) )

                fputs(pOptTitle, option_usage_fp);
        }

        flen = 4 - ((flen + 15) / 8);
        if (flen > 0)
            tab_skip_ct = flen;
        prt_opt_usage(opts, exit_code, pOptTitle);
    }




    switch (opts->fOptSet & 129) {
    case 129: fputs(zFlagOkay, option_usage_fp); break;
    case 128: break;
    case 130: fputs(zNoFlags, option_usage_fp); break;
    case 0: fputs(zOptsOnly, option_usage_fp); break;
    }

    if ((opts->fOptSet & OPTPROC_NUM_OPT) != 0)
        fputs(zNumberOpt, option_usage_fp);

    if ((opts->fOptSet & OPTPROC_REORDER) != 0)
        fputs(zReorder, option_usage_fp);

    if (opts->pzExplain != ((void*)0))
        fputs(opts->pzExplain, option_usage_fp);





    if (exit_code == EXIT_SUCCESS)
        prt_prog_detail(opts);




    if (HAS_pzPkgDataDir(opts) && (opts->pzPackager != ((void*)0)))
        fputs(opts->pzPackager, option_usage_fp);

    else if (opts->pzBugAddr != ((void*)0))
        fprintf(option_usage_fp, zPlsSendBugs, opts->pzBugAddr);

    fflush(option_usage_fp);

    if (ferror(option_usage_fp) != 0)
        fserr_exit(opts->pzProgName, zwriting, (option_usage_fp == stderr)
                   ? zstderr_name : zstdout_name);
}
