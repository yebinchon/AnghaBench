
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int pzProgName; } ;
typedef TYPE_1__ tOptions ;


 int EXIT_SUCCESS ;
 scalar_t__ do_gnu_usage (TYPE_1__*) ;
 scalar_t__ ferror (scalar_t__) ;
 int fflush (scalar_t__) ;
 int fserr_exit (int ,int ,int ) ;
 scalar_t__ option_usage_fp ;
 int prt_opt_usage (TYPE_1__*,int,char const*) ;
 int setGnuOptFmts (TYPE_1__*,char const**) ;
 int setStdOptFmts (TYPE_1__*,char const**) ;
 int set_usage_flags (TYPE_1__*,int *) ;
 scalar_t__ skip_misuse_usage (TYPE_1__*) ;
 scalar_t__ stderr ;
 int zstderr_name ;
 int zstdout_name ;
 int zwriting ;

void
optionOnlyUsage(tOptions * pOpts, int ex_code)
{
    char const * pOptTitle = ((void*)0);

    set_usage_flags(pOpts, ((void*)0));
    if ((ex_code != EXIT_SUCCESS) &&
        skip_misuse_usage(pOpts))
        return;




    if (do_gnu_usage(pOpts))
        (void)setGnuOptFmts(pOpts, &pOptTitle);
    else
        (void)setStdOptFmts(pOpts, &pOptTitle);

    prt_opt_usage(pOpts, ex_code, pOptTitle);

    fflush(option_usage_fp);
    if (ferror(option_usage_fp) != 0)
        fserr_exit(pOpts->pzProgName, zwriting, (option_usage_fp == stderr)
                   ? zstderr_name : zstdout_name);
}
