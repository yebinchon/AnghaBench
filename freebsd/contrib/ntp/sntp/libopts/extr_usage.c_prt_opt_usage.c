
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int optCt; int fOptSet; int presetOptCt; TYPE_2__* pOptDesc; } ;
typedef TYPE_1__ tOptions ;
struct TYPE_14__ {int fOptState; char* pz_Name; char* pzText; int optValue; } ;
typedef TYPE_2__ tOptDesc ;
struct TYPE_15__ {char* pzBrk; } ;


 int EXIT_SUCCESS ;
 int IS_GRAPHIC_CHAR (int ) ;
 int NL ;
 int OPTPROC_VENDOR_OPT ;
 int OPTST_DOCUMENT ;
 int OPTST_NO_INIT ;
 int OPTST_NO_USAGE_MASK ;
 int OPTST_OMITTED ;
 TYPE_5__ argTypes ;
 int fprintf (int ,char*,char*,char const*) ;
 int fputc (int ,int ) ;
 int option_usage_fp ;
 int prt_extd_usage (TYPE_1__*,TYPE_2__*,char const*) ;
 int prt_one_usage (TYPE_1__*,TYPE_2__*,TYPE_5__*) ;
 int prt_preamble (TYPE_1__*,TYPE_2__*,TYPE_5__*) ;
 char* zAuto ;
 char* zDisabledOpt ;
 char* zDisabledWhy ;
 char* zVendIntro ;

__attribute__((used)) static void
prt_opt_usage(tOptions * opts, int ex_code, char const * title)
{
    int ct = opts->optCt;
    int optNo = 0;
    tOptDesc * od = opts->pOptDesc;
    int docCt = 0;

    do {





        if ((od->fOptState & OPTST_NO_USAGE_MASK) != 0) {







            if ( (od->fOptState == (OPTST_OMITTED | OPTST_NO_INIT))
               && (od->pz_Name != ((void*)0))
               && (ex_code == EXIT_SUCCESS)) {

                char const * why_pz =
                    (od->pzText == ((void*)0)) ? zDisabledWhy : od->pzText;
                prt_preamble(opts, od, &argTypes);
                fprintf(option_usage_fp, zDisabledOpt, od->pz_Name, why_pz);
            }

            continue;
        }

        if ((od->fOptState & OPTST_DOCUMENT) != 0) {
            if (ex_code == EXIT_SUCCESS) {
                fprintf(option_usage_fp, argTypes.pzBrk, od->pzText,
                        title);
                docCt++;
            }

            continue;
        }


        if ( ((opts->fOptSet & OPTPROC_VENDOR_OPT) != 0)
           && (! IS_GRAPHIC_CHAR(od->optValue)))
            continue;
        if ((docCt > 0) && (ex_code == EXIT_SUCCESS)) {
            if (opts->presetOptCt == optNo) {
                if ((od[-1].fOptState & OPTST_DOCUMENT) == 0)
                    fprintf(option_usage_fp, argTypes.pzBrk, zAuto, title);

            } else if ((ct == 1) &&
                       (opts->fOptSet & OPTPROC_VENDOR_OPT))
                fprintf(option_usage_fp, argTypes.pzBrk, zVendIntro, title);
        }

        prt_one_usage(opts, od, &argTypes);





        if (ex_code == EXIT_SUCCESS)
            prt_extd_usage(opts, od, title);

    } while (od++, optNo++, (--ct > 0));

    fputc(NL, option_usage_fp);
}
