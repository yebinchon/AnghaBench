
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int z ;
struct TYPE_10__ {char* pzProgName; } ;
typedef TYPE_1__ tOptions ;
struct TYPE_11__ {int fOptState; char* pz_Name; scalar_t__ optMinCt; char* pzText; int * pOptProc; } ;
typedef TYPE_2__ tOptDesc ;
struct TYPE_12__ {char* pzOpt; char* pzNo; char* pzKey; char* pzFile; char* pzKeyL; char* pzBool; char* pzNum; char* pzNest; char* pzStr; char* pzTime; char* pzOptFmt; char* pzReq; } ;
typedef TYPE_3__ arg_types_t ;


 int EX_SOFTWARE ;
 int OPTST_ARG_OPTIONAL ;
 int OPTST_GET_ARGTYPE (int) ;
 int displayEnum ;
 int fprintf (int ,char*,char*,char*) ;
 char* line_fmt_buf ;
 int option_exits (int ) ;
 int option_usage_fp ;
 int prt_preamble (TYPE_1__*,TYPE_2__*,TYPE_3__*) ;
 int snprintf (char*,int,char*,char const*,char const*,...) ;
 int stderr ;
 char* zGnuOptFmt ;
 char* zbad_od ;

__attribute__((used)) static void
prt_one_usage(tOptions * opts, tOptDesc * od, arg_types_t * at)
{
    prt_preamble(opts, od, at);

    {
        char z[80];
        char const * atyp;






        if (od->fOptState & OPTST_ARG_OPTIONAL) {
            atyp = at->pzOpt;

        } else switch (OPTST_GET_ARGTYPE(od->fOptState)) {
        case 131: atyp = at->pzNo; break;
        case 135: atyp = at->pzKey; break;
        case 134: atyp = at->pzFile; break;
        case 132: atyp = at->pzKeyL; break;
        case 136: atyp = at->pzBool; break;
        case 130: atyp = at->pzNum; break;
        case 133: atyp = at->pzNest; break;
        case 129: atyp = at->pzStr; break;
        case 128: atyp = at->pzTime; break;
        default: goto bogus_desc;
        }
        snprintf(z, sizeof(z), at->pzOptFmt, atyp, od->pz_Name,
                 (od->optMinCt != 0) ? at->pzReq : at->pzOpt);

        fprintf(option_usage_fp, line_fmt_buf, z, od->pzText);

        switch (OPTST_GET_ARGTYPE(od->fOptState)) {
        case 135:
        case 132:
            displayEnum = (od->pOptProc != ((void*)0)) ? 1 : displayEnum;
        }
    }

    return;

 bogus_desc:
    fprintf(stderr, zbad_od, opts->pzProgName, od->pz_Name);
    option_exits(EX_SOFTWARE);
}
