
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT32 ;


 size_t ACPI_EVENT_MAX ;
 char const** AcpiGbl_EventTypes ;

const char *
AcpiUtGetEventName (
    UINT32 EventId)
{

    if (EventId > ACPI_EVENT_MAX)
    {
        return ("InvalidEventID");
    }

    return (AcpiGbl_EventTypes[EventId]);
}
