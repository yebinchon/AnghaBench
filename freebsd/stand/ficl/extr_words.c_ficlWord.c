
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {size_t count; scalar_t__* text; } ;
struct TYPE_7__ {scalar_t__ pad; } ;
typedef int STRINGINFO ;
typedef TYPE_1__ FICL_VM ;
typedef TYPE_2__ FICL_STRING ;
typedef size_t FICL_COUNT ;


 scalar_t__ POPINT () ;
 int PUSHPTR (TYPE_2__*) ;
 int SI_COUNT (int ) ;
 int SI_PTR (int ) ;
 int SI_SETLEN (int ,int) ;
 int nPAD ;
 int strcat (scalar_t__*,char*) ;
 int strncpy (scalar_t__*,int ,int) ;
 int vmCheckStack (TYPE_1__*,int,int) ;
 int vmParseStringEx (TYPE_1__*,char,int) ;

__attribute__((used)) static void ficlWord(FICL_VM *pVM)
{
    FICL_STRING *sp;
    char delim;
    STRINGINFO si;




    sp = (FICL_STRING *)pVM->pad;
    delim = (char)POPINT();
    si = vmParseStringEx(pVM, delim, 1);

    if (SI_COUNT(si) > nPAD-1)
        SI_SETLEN(si, nPAD-1);

    sp->count = (FICL_COUNT)SI_COUNT(si);
    strncpy(sp->text, SI_PTR(si), SI_COUNT(si));

    sp->text[sp->count] = 0;
    strcat(sp->text, " ");

    PUSHPTR(sp);
    return;
}
