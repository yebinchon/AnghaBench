
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int i; } ;
struct TYPE_7__ {TYPE_2__ sourceID; } ;
typedef TYPE_1__ FICL_VM ;
typedef int FICL_UNS ;
typedef TYPE_2__ CELL ;


 int IGNORE (int ) ;
 char* POPPTR () ;
 int POPUNS () ;
 int VM_OUTOFTEXT ;
 int ficlExecC (TYPE_1__*,char*,int ) ;
 int vmCheckStack (TYPE_1__*,int,int ) ;
 int vmThrow (TYPE_1__*,int) ;

__attribute__((used)) static void evaluate(FICL_VM *pVM)
{
    FICL_UNS count;
    char *cp;
    CELL id;
    int result;




    count = POPUNS();
    cp = POPPTR();

    IGNORE(count);
    id = pVM->sourceID;
    pVM->sourceID.i = -1;
    result = ficlExecC(pVM, cp, count);
    pVM->sourceID = id;
    if (result != VM_OUTOFTEXT)
        vmThrow(pVM, result);

    return;
}
