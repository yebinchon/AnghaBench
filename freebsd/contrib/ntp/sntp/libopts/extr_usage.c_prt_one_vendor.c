
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
struct TYPE_11__ {int fOptState; char* pz_Name; char* pzText; int * pOptProc; } ;
typedef TYPE_2__ tOptDesc ;
struct TYPE_12__ {char* pzOpt; char* pzNo; char* pzKey; char* pzFile; char* pzKeyL; char* pzBool; char* pzNum; char* pzNest; char* pzStr; char* pzTime; } ;
typedef TYPE_3__ arg_types_t ;


 char const NUL ;
 int OPTST_ARG_OPTIONAL ;
 int OPTST_GET_ARGTYPE (int) ;
 char* SPN_WHITESPACE_CHARS (char const*) ;
 int ao_bug (int ) ;
 int displayEnum ;
 int fprintf (int ,char const*,char*,char*) ;
 int option_usage_fp ;
 int prt_preamble (TYPE_1__*,TYPE_2__*,TYPE_3__*) ;
 int snprintf (char*,int,char*,char*,...) ;
 int stderr ;
 int zbad_arg_type_msg ;
 char* zbad_od ;

__attribute__((used)) static void
prt_one_vendor(tOptions * opts, tOptDesc * od,
               arg_types_t * argtp, char const * usefmt)
{
    prt_preamble(opts, od, argtp);

    {
        char z[ 80 ];
        char const * pzArgType;






        if (od->fOptState & OPTST_ARG_OPTIONAL) {
            pzArgType = argtp->pzOpt;

        } else switch (OPTST_GET_ARGTYPE(od->fOptState)) {
        case 131: pzArgType = argtp->pzNo; break;
        case 135: pzArgType = argtp->pzKey; break;
        case 134: pzArgType = argtp->pzFile; break;
        case 132: pzArgType = argtp->pzKeyL; break;
        case 136: pzArgType = argtp->pzBool; break;
        case 130: pzArgType = argtp->pzNum; break;
        case 133: pzArgType = argtp->pzNest; break;
        case 129: pzArgType = argtp->pzStr; break;
        case 128: pzArgType = argtp->pzTime; break;
        default: goto bogus_desc;
        }

        pzArgType = SPN_WHITESPACE_CHARS(pzArgType);
        if (*pzArgType == NUL)
            snprintf(z, sizeof(z), "%s", od->pz_Name);
        else
            snprintf(z, sizeof(z), "%s=%s", od->pz_Name, pzArgType);
        fprintf(option_usage_fp, usefmt, z, od->pzText);

        switch (OPTST_GET_ARGTYPE(od->fOptState)) {
        case 135:
        case 132:
            displayEnum = (od->pOptProc != ((void*)0)) ? 1 : displayEnum;
        }
    }

    return;

 bogus_desc:
    fprintf(stderr, zbad_od, opts->pzProgName, od->pz_Name);
    ao_bug(zbad_arg_type_msg);
}
