
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UINT8 ;
struct TYPE_2__ {char* EventName; int Valid; int StartTime; } ;


 size_t ASL_NUM_EVENTS ;
 int AcpiOsGetTimer () ;
 int AcpiOsPrintf (char*) ;
 TYPE_1__* AslGbl_Events ;
 size_t AslGbl_NextEvent ;
 int TRUE ;

UINT8
UtBeginEvent (
    char *Name)
{

    if (AslGbl_NextEvent >= ASL_NUM_EVENTS)
    {
        AcpiOsPrintf ("Ran out of compiler event structs!\n");
        return (AslGbl_NextEvent);
    }



    AslGbl_Events[AslGbl_NextEvent].StartTime = AcpiOsGetTimer ();
    AslGbl_Events[AslGbl_NextEvent].EventName = Name;
    AslGbl_Events[AslGbl_NextEvent].Valid = TRUE;
    return (AslGbl_NextEvent++);
}
