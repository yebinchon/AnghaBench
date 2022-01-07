
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ LogicalLineNumber; struct TYPE_4__* Next; } ;
typedef TYPE_1__ ASL_ERROR_MSG ;


 TYPE_1__* AslGbl_ErrorLog ;

__attribute__((used)) static void
AeAddToErrorLog (
    ASL_ERROR_MSG *Enode)
{
    ASL_ERROR_MSG *Next;
    ASL_ERROR_MSG *Prev;




    if (!AslGbl_ErrorLog)
    {
        AslGbl_ErrorLog = Enode;
        return;
    }





    Prev = ((void*)0);
    Next = AslGbl_ErrorLog;

    while ((Next) && (Next->LogicalLineNumber <= Enode->LogicalLineNumber))
    {
        Prev = Next;
        Next = Next->Next;
    }



    Enode->Next = Next;

    if (Prev)
    {
        Prev->Next = Enode;
    }
    else
    {
        AslGbl_ErrorLog = Enode;
    }
}
