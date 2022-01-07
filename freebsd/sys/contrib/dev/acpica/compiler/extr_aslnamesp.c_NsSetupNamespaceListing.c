
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* Handle; } ;


 size_t ASL_FILE_NAMESPACE_OUTPUT ;
 TYPE_1__* AslGbl_Files ;
 int AslGbl_NsOutputFlag ;
 int TRUE ;

void
NsSetupNamespaceListing (
    void *Handle)
{

    AslGbl_NsOutputFlag = TRUE;
    AslGbl_Files[ASL_FILE_NAMESPACE_OUTPUT].Handle = Handle;
}
