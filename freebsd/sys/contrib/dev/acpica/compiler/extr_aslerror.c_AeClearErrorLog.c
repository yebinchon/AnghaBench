
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Next; } ;
typedef TYPE_1__ ASL_ERROR_MSG ;


 int ACPI_FREE (TYPE_1__*) ;
 TYPE_1__* AslGbl_ErrorLog ;

void
AeClearErrorLog (
    void)
{
    ASL_ERROR_MSG *Enode = AslGbl_ErrorLog;
    ASL_ERROR_MSG *Next;




    while (Enode)
    {
        Next = Enode->Next;
        ACPI_FREE (Enode);
        Enode = Next;
    }

   AslGbl_ErrorLog = ((void*)0);
}
