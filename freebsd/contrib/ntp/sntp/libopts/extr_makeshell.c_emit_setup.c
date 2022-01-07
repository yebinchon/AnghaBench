
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int presetOptCt; int pzPROGNAME; TYPE_3__* pOptDesc; } ;
typedef TYPE_2__ tOptions ;
struct TYPE_7__ {char* argString; int argBool; scalar_t__ argIntptr; scalar_t__ argInt; } ;
struct TYPE_9__ {int optMaxCt; int * pz_NAME; TYPE_1__ optArg; int (* pOptProc ) (int ,TYPE_3__*) ;int fOptState; } ;
typedef TYPE_3__ tOptDesc ;
typedef int int_val_buf ;


 char* FALSE_STR ;
 char* MULTI_DEF_FMT ;




 int OPTPROC_EMIT_SHELL ;
 int OPTST_GET_ARGTYPE (int ) ;
 char const* SGL_DEF_FMT ;
 char* SGL_NO_DEF_FMT ;
 scalar_t__ SKIP_OPT (TYPE_3__*) ;
 char* TRUE_STR ;
 int printf (char const*,int ,int *,char const*) ;
 int snprintf (char*,int,char*,unsigned long) ;
 int stub1 (int ,TYPE_3__*) ;

__attribute__((used)) static void
emit_setup(tOptions * opts)
{
    tOptDesc * od = opts->pOptDesc;
    int opt_ct = opts->presetOptCt;
    char const * fmt;
    char const * def_val;

    for (;opt_ct > 0; od++, --opt_ct) {
        char int_val_buf[32];





        if (SKIP_OPT(od) || (od->pz_NAME == ((void*)0)))
            continue;

        if (od->optMaxCt > 1)
             fmt = MULTI_DEF_FMT;
        else fmt = SGL_DEF_FMT;





        switch (OPTST_GET_ARGTYPE(od->fOptState)) {
        case 130:
            (*(od->pOptProc))(OPTPROC_EMIT_SHELL, od );
            def_val = od->optArg.argString;
            break;




        case 128:
            snprintf(int_val_buf, sizeof(int_val_buf), "%d",
                     (int)od->optArg.argInt);
            def_val = int_val_buf;
            break;

        case 129:
            snprintf(int_val_buf, sizeof(int_val_buf), "%lu",
                     (unsigned long)od->optArg.argIntptr);
            def_val = int_val_buf;
            break;

        case 131:
            def_val = (od->optArg.argBool) ? TRUE_STR : FALSE_STR;
            break;

        default:
            if (od->optArg.argString == ((void*)0)) {
                if (fmt == SGL_DEF_FMT)
                    fmt = SGL_NO_DEF_FMT;
                def_val = ((void*)0);
            }
            else
                def_val = od->optArg.argString;
        }

        printf(fmt, opts->pzPROGNAME, od->pz_NAME, def_val);
    }
}
