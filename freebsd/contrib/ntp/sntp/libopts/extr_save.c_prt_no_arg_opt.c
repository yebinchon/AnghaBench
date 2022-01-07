
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* pz_DisableName; char* pz_Name; } ;
typedef TYPE_1__ tOptDesc ;
typedef int FILE ;


 scalar_t__ DISABLED_OPT (TYPE_1__*) ;
 int fprintf (int *,char*,char const*) ;

__attribute__((used)) static void
prt_no_arg_opt(FILE * fp, tOptDesc * p, tOptDesc * pOD)
{





    char const * pznm =
        (DISABLED_OPT(p)) ? pOD->pz_DisableName : pOD->pz_Name;





    if (pznm == ((void*)0))
        pznm = pOD->pz_Name;

    fprintf(fp, "%s\n", pznm);
}
