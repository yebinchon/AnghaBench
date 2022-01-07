
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {uintptr_t argIntptr; int argString; } ;
struct TYPE_6__ {TYPE_1__ optArg; int (* pOptProc ) (int ,TYPE_2__*) ;} ;
typedef TYPE_2__ tOptDesc ;


 int OPTPROC_RETURN_VALNAME ;
 char* VOIDP (int ) ;
 int stub1 (int ,TYPE_2__*) ;

char *
optionMemberList(tOptDesc * od)
{
    uintptr_t sv = od->optArg.argIntptr;
    char * res;
    (*(od->pOptProc))(OPTPROC_RETURN_VALNAME, od);
    res = VOIDP(od->optArg.argString);
    od->optArg.argIntptr = sv;
    return res;
}
