
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_INVOKE (int ,int) ;
 int acpi_sleep_event ;

__attribute__((used)) static void
acpi_invoke_sleep_eventhandler(void *context)
{

    EVENTHANDLER_INVOKE(acpi_sleep_event, *(int *)context);
}
