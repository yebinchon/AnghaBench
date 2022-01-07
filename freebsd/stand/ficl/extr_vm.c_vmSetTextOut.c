
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ textOut; } ;
typedef scalar_t__ OUTFUNC ;
typedef TYPE_1__ FICL_VM ;


 scalar_t__ ficlTextOut ;

void vmSetTextOut(FICL_VM *pVM, OUTFUNC textOut)
{
    if (textOut)
        pVM->textOut = textOut;
    else
        pVM->textOut = ficlTextOut;

    return;
}
