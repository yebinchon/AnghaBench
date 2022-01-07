
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UINT8 ;
struct TYPE_2__ {int EndTime; } ;


 size_t ASL_NUM_EVENTS ;
 int AcpiOsGetTimer () ;
 TYPE_1__* AslGbl_Events ;

void
UtEndEvent (
    UINT8 Event)
{

    if (Event >= ASL_NUM_EVENTS)
    {
        return;
    }



    AslGbl_Events[Event].EndTime = AcpiOsGetTimer ();
}
