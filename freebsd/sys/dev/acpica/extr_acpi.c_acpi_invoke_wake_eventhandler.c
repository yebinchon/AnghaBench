
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_INVOKE (int ,int) ;
 int acpi_wakeup_event ;

__attribute__((used)) static void
acpi_invoke_wake_eventhandler(void *context)
{

    EVENTHANDLER_INVOKE(acpi_wakeup_event, *(int *)context);
}
