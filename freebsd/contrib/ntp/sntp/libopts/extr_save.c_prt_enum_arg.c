
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {uintptr_t argEnum; int argString; } ;
struct TYPE_7__ {TYPE_1__ optArg; int (* pOptProc ) (int ,TYPE_2__*) ;} ;
typedef TYPE_2__ tOptDesc ;
typedef int FILE ;


 int OPTPROC_RETURN_VALNAME ;
 int VOIDP (int ) ;
 int prt_entry (int *,TYPE_2__*,int ) ;
 int stub1 (int ,TYPE_2__*) ;

__attribute__((used)) static void
prt_enum_arg(FILE * fp, tOptDesc * od)
{
    uintptr_t val = od->optArg.argEnum;





    (*(od->pOptProc))(OPTPROC_RETURN_VALNAME, od);
    prt_entry(fp, od, VOIDP(od->optArg.argString));

    od->optArg.argEnum = val;
}
