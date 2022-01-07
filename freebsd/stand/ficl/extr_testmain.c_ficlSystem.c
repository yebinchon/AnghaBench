
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ count; int text; } ;
struct TYPE_8__ {char* pad; } ;
typedef TYPE_1__ FICL_VM ;
typedef TYPE_2__ FICL_STRING ;


 int VM_QUIT ;
 int sprintf (char*,char*,int) ;
 int system (int ) ;
 int vmGetString (TYPE_1__*,TYPE_2__*,char) ;
 int vmTextOut (TYPE_1__*,char*,int) ;
 int vmThrow (TYPE_1__*,int ) ;

__attribute__((used)) static void ficlSystem(FICL_VM *pVM)
{
    FICL_STRING *pFS = (FICL_STRING *)pVM->pad;

    vmGetString(pVM, pFS, '\n');
    if (pFS->count > 0)
    {
        int err = system(pFS->text);
        if (err)
        {
            sprintf(pVM->pad, "System call returned %d", err);
            vmTextOut(pVM, pVM->pad, 1);
            vmThrow(pVM, VM_QUIT);
        }
    }
    else
    {
        vmTextOut(pVM, "Warning (system): nothing happened", 1);
    }
    return;
}
