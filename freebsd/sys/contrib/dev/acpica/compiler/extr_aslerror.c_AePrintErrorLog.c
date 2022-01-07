
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_4__ {struct TYPE_4__* Next; } ;
typedef TYPE_1__ ASL_ERROR_MSG ;


 int AePrintException (int ,TYPE_1__*,int *) ;
 TYPE_1__* AslGbl_ErrorLog ;

void
AePrintErrorLog (
    UINT32 FileId)
{
    ASL_ERROR_MSG *Enode = AslGbl_ErrorLog;




    while (Enode)
    {
        AePrintException (FileId, Enode, ((void*)0));
        Enode = Enode->Next;
    }
}
