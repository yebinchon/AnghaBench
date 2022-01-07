
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int structVersion; char* pzFullUsage; char* pzShortUsage; int fOptSet; char* pzUsageTitle; int pzProgName; } ;
typedef TYPE_1__ tOptions ;


 int AO_EXIT_REQ_USAGE ;
 int EXIT_SUCCESS ;
 int OPTPROC_COMPUTE ;
 int OPTPROC_TRANSLATE ;
 int displayEnum ;
 scalar_t__ ferror (int *) ;
 int fflush (int *) ;
 int fprintf (int *,char*,int ) ;
 int fputs (char const*,int *) ;
 int fserr_exit (int ,int ,int ) ;
 int optionPrintParagraphs (char const*,int,int *) ;
 int option_exits (int) ;
 int * option_usage_fp ;
 scalar_t__ print_exit ;
 int print_offer_usage (TYPE_1__*) ;
 int print_usage_details (TYPE_1__*,int) ;
 int set_usage_flags (TYPE_1__*,int *) ;
 int skip_misuse_usage (TYPE_1__*) ;
 int * stderr ;
 int * stdout ;
 int zstderr_name ;
 int zstdout_name ;
 int zwriting ;

void
optionUsage(tOptions * opts, int usage_exit_code)
{
    int exit_code = (usage_exit_code == AO_EXIT_REQ_USAGE)
        ? EXIT_SUCCESS : usage_exit_code;

    displayEnum = 0;
    set_usage_flags(opts, ((void*)0));
    {
        char const * pz;

        if (exit_code == EXIT_SUCCESS) {
            pz = (opts->structVersion >= 30 * 4096)
                ? opts->pzFullUsage : ((void*)0);

            if (option_usage_fp == ((void*)0))
                option_usage_fp = print_exit ? stderr : stdout;

        } else {
            pz = (opts->structVersion >= 30 * 4096)
                ? opts->pzShortUsage : ((void*)0);

            if (option_usage_fp == ((void*)0))
                option_usage_fp = stderr;
        }

        if (((opts->fOptSet & OPTPROC_COMPUTE) == 0) && (pz != ((void*)0))) {
            if ((opts->fOptSet & OPTPROC_TRANSLATE) != 0)
                optionPrintParagraphs(pz, 1, option_usage_fp);
            else
                fputs(pz, option_usage_fp);
            goto flush_and_exit;
        }
    }

    fprintf(option_usage_fp, opts->pzUsageTitle, opts->pzProgName);

    if ((exit_code == EXIT_SUCCESS) ||
        (! skip_misuse_usage(opts)))

        print_usage_details(opts, usage_exit_code);
    else
        print_offer_usage(opts);

 flush_and_exit:
    fflush(option_usage_fp);
    if (ferror(option_usage_fp) != 0)
        fserr_exit(opts->pzProgName, zwriting, (option_usage_fp == stdout)
                   ? zstdout_name : zstderr_name);

    option_exits(exit_code);
}
