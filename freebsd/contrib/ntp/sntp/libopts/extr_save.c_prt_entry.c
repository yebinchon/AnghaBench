
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ optEquivIndex; char* pz_Name; char* pz_DisableName; int fOptState; } ;
typedef TYPE_1__ tOptDesc ;
typedef int FILE ;


 int DISABLED_OPT (TYPE_1__*) ;
 char NL ;
 scalar_t__ NO_EQUIVALENT ;
 scalar_t__ OPARG_TYPE_NUMERIC ;
 scalar_t__ OPTST_GET_ARGTYPE (int ) ;
 int fprintf (int *,char*,int) ;
 int fputc (char,int *) ;
 int fputs (char const*,int *) ;
 int fwrite (char const*,size_t,size_t,int *) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;

__attribute__((used)) static void
prt_entry(FILE * fp, tOptDesc * od, char const * l_arg)
{
    int space_ct;







    {
        char const * pz =
            (! DISABLED_OPT(od) || (od->optEquivIndex != NO_EQUIVALENT))
            ? od->pz_Name
            : od->pz_DisableName;
        space_ct = 17 - strlen(pz);
        fputs(pz, fp);
    }

    if ( (l_arg == ((void*)0))
       && (OPTST_GET_ARGTYPE(od->fOptState) != OPARG_TYPE_NUMERIC))
        goto end_entry;

    fputs(" = ", fp);
    while (space_ct-- > 0) fputc(' ', fp);





    if (OPTST_GET_ARGTYPE(od->fOptState) == OPARG_TYPE_NUMERIC)
        fprintf(fp, "%d", (int)(intptr_t)l_arg);

    else {
        for (;;) {
            char const * eol = strchr(l_arg, NL);





            if (eol == ((void*)0))
                break;




            (void)fwrite(l_arg, (size_t)(eol - l_arg), (size_t)1, fp);
            l_arg = eol+1;
            fputs("\\\n", fp);
        }




        fputs(l_arg, fp);
    }

end_entry:
    fputc(NL, fp);
}
