
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int argEnum; char const* argString; } ;
struct TYPE_6__ {TYPE_1__ optArg; int (* pOptProc ) (int ,TYPE_2__*) ;int member_0; } ;
typedef TYPE_2__ tOptDesc ;


 int OPTPROC_RETURN_VALNAME ;
 int stub1 (int ,TYPE_2__*) ;

char const *
optionKeywordName(tOptDesc * pOD, unsigned int enum_val)
{
    tOptDesc od = { 0 };
    od.optArg.argEnum = enum_val;

    (*(pOD->pOptProc))(OPTPROC_RETURN_VALNAME, &od );
    return od.optArg.argString;
}
