
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fOptSet; int optCt; int * pzDetail; TYPE_2__* pOptDesc; int pzPROGNAME; int pzProgPath; int pzRcName; int * papzHomeList; } ;
typedef TYPE_1__ tOptions ;
struct TYPE_6__ {int (* pOptProc ) (int ,TYPE_2__*) ;int fOptState; } ;
typedef TYPE_2__ tOptDesc ;


 int NL ;


 int OPTPROC_EMIT_USAGE ;
 int OPTPROC_ENVIRON ;
 int OPTST_GET_ARGTYPE (int ) ;
 scalar_t__ displayEnum ;
 int fflush (int ) ;
 int fprintf (int ,char*,int ) ;
 int fputc (int ,int ) ;
 int fputs (int *,int ) ;
 int option_usage_fp ;
 int prt_ini_list (int *,int ,int ) ;
 int stub1 (int ,TYPE_2__*) ;
 char* zExamineFmt ;
 int * zPresetIntro ;

__attribute__((used)) static void
prt_prog_detail(tOptions * opts)
{
    bool need_intro = (opts->papzHomeList == ((void*)0));





    if (! need_intro)
        prt_ini_list(opts->papzHomeList, opts->pzRcName, opts->pzProgPath);




    if ((opts->fOptSet & OPTPROC_ENVIRON) != 0) {
        if (need_intro)
            fputs(zPresetIntro, option_usage_fp);

        fprintf(option_usage_fp, zExamineFmt, opts->pzPROGNAME);
    }






    if (displayEnum) {
        int ct = opts->optCt;
        int optNo = 0;
        tOptDesc * od = opts->pOptDesc;

        fputc(NL, option_usage_fp);
        fflush(option_usage_fp);
        do {
            switch (OPTST_GET_ARGTYPE(od->fOptState)) {
            case 129:
            case 128:
                (*(od->pOptProc))(OPTPROC_EMIT_USAGE, od);
            }
        } while (od++, optNo++, (--ct > 0));
    }




    if (opts->pzDetail != ((void*)0))
        fputs(opts->pzDetail, option_usage_fp);
}
