
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {char const* pzProgName; int (* pUsageProc ) (TYPE_2__*,int ) ;} ;
typedef TYPE_2__ tOptions ;
struct TYPE_9__ {long const argInt; } ;
struct TYPE_11__ {long const pz_Name; int fOptState; TYPE_1__ optArg; } ;
typedef TYPE_3__ tOptDesc ;


 int EXIT_FAILURE ;
 long const LONG_MAX ;
 long const LONG_MIN ;
 int NL ;
 char* ONE_TAB_STR ;
 TYPE_2__* OPTPROC_EMIT_LIMIT ;
 TYPE_2__* OPTPROC_EMIT_USAGE ;
 int OPTST_SCALED_NUM ;
 int fprintf (int ,char*,char const*,...) ;
 int fputc (int ,int ) ;
 int fputs (int ,int ) ;
 int option_usage_fp ;
 int stub1 (TYPE_2__*,int ) ;
 int tab_skip_ct ;
 char* zRange ;
 char* zRangeAbove ;
 char* zRangeErr ;
 char* zRangeExact ;
 char* zRangeLie ;
 char* zRangeOnly ;
 int zRangeOr ;
 char* zRangeScaled ;
 char* zRangeUpto ;
 char* zTabHyp ;
 char* zTabSpace ;

void
optionShowRange(tOptions * pOpts, tOptDesc * pOD, void * rng_table, int rng_ct)
{
    const struct {long const rmin, rmax;} * rng = rng_table;

    char const * pz_indent = zTabHyp + tab_skip_ct;





    if (pOpts != OPTPROC_EMIT_USAGE) {
        if (pOpts <= OPTPROC_EMIT_LIMIT)
            return;
        pz_indent = ONE_TAB_STR;

        fprintf(option_usage_fp, zRangeErr, pOpts->pzProgName,
                pOD->pz_Name, pOD->optArg.argInt);
        pz_indent = "";
    }

    if (pOD->fOptState & OPTST_SCALED_NUM)
        fprintf(option_usage_fp, zRangeScaled, pz_indent);

    fprintf(option_usage_fp, (rng_ct > 1) ? zRangeLie : zRangeOnly, pz_indent);
    pz_indent = (pOpts != OPTPROC_EMIT_USAGE)
        ? ONE_TAB_STR
        : (zTabSpace + tab_skip_ct);

    for (;;) {
        if (rng->rmax == LONG_MIN)
            fprintf(option_usage_fp, zRangeExact, pz_indent, rng->rmin);
        else if (rng->rmin == LONG_MIN)
            fprintf(option_usage_fp, zRangeUpto, pz_indent, rng->rmax);
        else if (rng->rmax == LONG_MAX)
            fprintf(option_usage_fp, zRangeAbove, pz_indent, rng->rmin);
        else
            fprintf(option_usage_fp, zRange, pz_indent, rng->rmin,
                    rng->rmax);

        if (--rng_ct <= 0) {
            fputc(NL, option_usage_fp);
            break;
        }
        fputs(zRangeOr, option_usage_fp);
        rng++;
    }

    if (pOpts > OPTPROC_EMIT_LIMIT)
        pOpts->pUsageProc(pOpts, EXIT_FAILURE);
}
