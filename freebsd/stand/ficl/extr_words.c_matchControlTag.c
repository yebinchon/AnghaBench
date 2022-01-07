
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;


 scalar_t__ stackPopPtr (int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int vmCheckStack (TYPE_1__*,int,int ) ;
 int vmThrowErr (TYPE_1__*,char*,char*) ;

__attribute__((used)) static void matchControlTag(FICL_VM *pVM, char *tag)
{
    char *cp;



    cp = (char *)stackPopPtr(pVM->pStack);



    if ( (cp != tag) && strcmp(cp, tag) )
    {
        vmThrowErr(pVM, "Error -- unmatched control structure \"%s\"", tag);
    }

    return;
}
