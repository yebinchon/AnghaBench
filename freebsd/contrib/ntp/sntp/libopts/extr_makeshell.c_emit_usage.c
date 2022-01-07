
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_6__ {char* pzPROGNAME; int optCt; TYPE_2__* pOptDesc; int pzProgName; int pzProgPath; } ;
typedef TYPE_1__ tOptions ;
struct TYPE_7__ {scalar_t__ pOptProc; } ;
typedef TYPE_2__ tOptDesc ;
struct tm {int dummy; } ;


 int AO_NAME_SIZE ;
 char* END_PRE_FMT ;
 char* GENSHELL_OPT_ARG (int ) ;
 scalar_t__ HAVE_GENSHELL_OPT (int ) ;
 char NUL ;
 char* PREAMBLE_FMT ;
 int SCRIPT ;
 char* SHELL_MAGIC ;
 int START_MARK ;
 char* STDOUT ;
 int TIME_FMT ;
 int TT_LONGUSAGE ;
 int TT_USAGE ;
 int TT_VERSION ;
 char** VOIDP (int *) ;
 int fputs (int *,int ) ;
 struct tm* localtime (int *) ;
 scalar_t__ optionPrintVersion ;
 int printf (char*,char*,...) ;
 int * script_leader ;
 char* shell_prog ;
 int stdout ;
 int strftime (char*,int,int ,struct tm*) ;
 int text_to_var (TYPE_1__*,int ,TYPE_2__*) ;
 int time (int *) ;
 scalar_t__ tolower (unsigned char) ;

__attribute__((used)) static void
emit_usage(tOptions * opts)
{
    char tm_nm_buf[AO_NAME_SIZE];







    if (script_leader != ((void*)0))
        fputs(script_leader, stdout);

    {
        char const * out_nm;

        {
            time_t c_tim = time(((void*)0));
            struct tm * ptm = localtime(&c_tim);
            strftime(tm_nm_buf, AO_NAME_SIZE, TIME_FMT, ptm );
        }

        if (HAVE_GENSHELL_OPT(SCRIPT))
             out_nm = GENSHELL_OPT_ARG(SCRIPT);
        else out_nm = STDOUT;

        if ((script_leader == ((void*)0)) && (shell_prog != ((void*)0)))
            printf(SHELL_MAGIC, shell_prog);

        printf(PREAMBLE_FMT, START_MARK, out_nm, tm_nm_buf);
    }

    printf(END_PRE_FMT, opts->pzPROGNAME);





    {
        char * pzPN = tm_nm_buf;
        char const * pz = opts->pzPROGNAME;
        char ** pp;


        for (;;) {
            if ((*pzPN++ = (char)tolower((unsigned char)*pz++)) == NUL)
                break;
        }

        pp = VOIDP(&(opts->pzProgPath));
        *pp = tm_nm_buf;
        pp = VOIDP(&(opts->pzProgName));
        *pp = tm_nm_buf;
    }

    text_to_var(opts, TT_LONGUSAGE, ((void*)0));
    text_to_var(opts, TT_USAGE, ((void*)0));

    {
        tOptDesc * pOptDesc = opts->pOptDesc;
        int optionCt = opts->optCt;

        for (;;) {
            if (pOptDesc->pOptProc == optionPrintVersion) {
                text_to_var(opts, TT_VERSION, pOptDesc);
                break;
            }

            if (--optionCt <= 0)
                break;
            pOptDesc++;
        }
    }
}
