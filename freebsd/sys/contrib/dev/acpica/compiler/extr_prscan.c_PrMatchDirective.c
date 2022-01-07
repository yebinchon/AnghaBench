
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ Name; } ;


 int ASL_DIRECTIVE_NOT_FOUND ;
 TYPE_1__* AslGbl_DirectiveInfo ;
 int strcmp (scalar_t__,char*) ;

__attribute__((used)) static int
PrMatchDirective (
    char *Directive)
{
    int i;


    if (!Directive || Directive[0] == 0)
    {
        return (ASL_DIRECTIVE_NOT_FOUND);
    }

    for (i = 0; AslGbl_DirectiveInfo[i].Name; i++)
    {
        if (!strcmp (AslGbl_DirectiveInfo[i].Name, Directive))
        {
            return (i);
        }
    }

    return (ASL_DIRECTIVE_NOT_FOUND);
}
