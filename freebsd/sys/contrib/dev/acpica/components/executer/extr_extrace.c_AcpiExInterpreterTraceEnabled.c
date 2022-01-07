
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOLEAN ;


 int ACPI_TRACE_ENABLED ;
 int ACPI_TRACE_ONESHOT ;
 int AcpiGbl_TraceFlags ;
 scalar_t__ AcpiGbl_TraceMethodName ;
 scalar_t__ AcpiGbl_TraceMethodObject ;
 int FALSE ;
 int TRUE ;
 scalar_t__ strcmp (scalar_t__,char*) ;

__attribute__((used)) static BOOLEAN
AcpiExInterpreterTraceEnabled (
    char *Name)
{



    if (!(AcpiGbl_TraceFlags & ACPI_TRACE_ENABLED))
    {
        return (FALSE);
    }
    if (AcpiGbl_TraceMethodObject)
    {
        return (TRUE);
    }

    if (Name &&
        (AcpiGbl_TraceMethodName &&
         strcmp (AcpiGbl_TraceMethodName, Name)))
    {
        return (FALSE);
    }

    if ((AcpiGbl_TraceFlags & ACPI_TRACE_ONESHOT) &&
        !AcpiGbl_TraceMethodName)
    {
        return (FALSE);
    }

    return (TRUE);
}
