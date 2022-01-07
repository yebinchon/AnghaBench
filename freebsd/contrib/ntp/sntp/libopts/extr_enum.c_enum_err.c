
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int (* pUsageProc ) (TYPE_2__*,int ) ;int pzProgName; } ;
typedef TYPE_2__ tOptions ;
struct TYPE_8__ {int argString; } ;
struct TYPE_10__ {int fOptState; int pz_Name; TYPE_1__ optArg; } ;
typedef TYPE_3__ tOptDesc ;


 char* ENUM_ERR_LINE ;
 char* ENUM_ERR_WIDTH ;
 int EXIT_FAILURE ;
 char NL ;
 char* NLSTR_FMT ;
 char* NLSTR_SPACE_FMT ;
 scalar_t__ OPARG_TYPE_MEMBERSHIP ;
 TYPE_2__* OPTPROC_EMIT_LIMIT ;
 scalar_t__ OPTST_GET_ARGTYPE (int ) ;
 int TWO_SPACES_STR ;
 int fprintf (int ,char*,...) ;
 int fputc (char,int ) ;
 int fputs (int ,int ) ;
 int option_usage_fp ;
 char* pz_enum_err_fmt ;
 int sprintf (char*,char*,int) ;
 int strlen (int ) ;
 int stub1 (TYPE_2__*,int ) ;
 char* zIntRange ;
 char* zLowerBits ;
 int zSetMemberSettings ;
 char* zValidKeys ;

__attribute__((used)) static void
enum_err(tOptions * pOpts, tOptDesc * pOD,
         char const * const * paz_names, int name_ct)
{
    size_t max_len = 0;
    size_t ttl_len = 0;
    int ct_down = name_ct;
    int hidden = 0;




    if (pOpts > OPTPROC_EMIT_LIMIT)
        fprintf(option_usage_fp, pz_enum_err_fmt, pOpts->pzProgName,
                pOD->optArg.argString, pOD->pz_Name);

    fprintf(option_usage_fp, zValidKeys, pOD->pz_Name);






    if (**paz_names == 0x7F) {
        paz_names++;
        hidden = 1;
        ct_down = --name_ct;
    }





    {
        char const * const * paz = paz_names;

        do {
            size_t len = strlen(*(paz++)) + 1;
            if (len > max_len)
                max_len = len;
            ttl_len += len;
        } while (--ct_down > 0);

        ct_down = name_ct;
    }




    if (max_len > 35) {
        do {
            fprintf(option_usage_fp, ENUM_ERR_LINE, *(paz_names++));
        } while (--ct_down > 0);
    }




    else if (ttl_len < 76) {
        fputc(' ', option_usage_fp);
        do {
            fputc(' ', option_usage_fp);
            fputs(*(paz_names++), option_usage_fp);
        } while (--ct_down > 0);
        fputc(NL, option_usage_fp);
    }




    else {
        unsigned int ent_no = 0;
        char zFmt[16];

        sprintf(zFmt, ENUM_ERR_WIDTH, (int)max_len);
        max_len = 78 / max_len;
        fputs(TWO_SPACES_STR, option_usage_fp);




        ct_down = name_ct;
        while (--ct_down > 0) {
            if (++ent_no == max_len) {



                fprintf(option_usage_fp, NLSTR_SPACE_FMT, *(paz_names++));
                ent_no = 0;
            }

            else
                fprintf(option_usage_fp, zFmt, *(paz_names++) );
        }
        fprintf(option_usage_fp, NLSTR_FMT, *paz_names);
    }

    if (pOpts > OPTPROC_EMIT_LIMIT) {
        fprintf(option_usage_fp, zIntRange, hidden, name_ct - 1 + hidden);

        (*(pOpts->pUsageProc))(pOpts, EXIT_FAILURE);

    }

    if (OPTST_GET_ARGTYPE(pOD->fOptState) == OPARG_TYPE_MEMBERSHIP) {
        fprintf(option_usage_fp, zLowerBits, name_ct);
        fputs(zSetMemberSettings, option_usage_fp);
    } else {
        fprintf(option_usage_fp, zIntRange, hidden, name_ct - 1 + hidden);
    }
}
