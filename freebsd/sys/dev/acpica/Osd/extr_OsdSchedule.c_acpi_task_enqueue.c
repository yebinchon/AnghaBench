
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_task_ctx {int at_flag; int at_task; void* at_context; int at_function; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_OSD_EXEC_CALLBACK ;


 int ACPI_TASK_ENQUEUED ;
 int ACPI_TASK_FREE ;
 int ACPI_TASK_USED ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int TASK_INIT (int *,int,int ,struct acpi_task_ctx*) ;
 int acpi_max_tasks ;
 int acpi_task_count ;
 int acpi_task_execute ;
 int acpi_taskq ;
 scalar_t__ acpi_taskq_started ;
 struct acpi_task_ctx* acpi_tasks ;
 int acpi_tasks_hiwater ;
 int atomic_cmpset_int (int*,int,int) ;
 int atomic_set_int (int*,int ) ;
 scalar_t__ bootverbose ;
 int printf (char*) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static ACPI_STATUS
acpi_task_enqueue(int priority, ACPI_OSD_EXEC_CALLBACK Function, void *Context)
{
    struct acpi_task_ctx *at;
    int i;

    for (at = ((void*)0), i = 0; i < acpi_max_tasks; i++)
 if (atomic_cmpset_int(&acpi_tasks[i].at_flag, ACPI_TASK_FREE,
     ACPI_TASK_USED)) {
     at = &acpi_tasks[i];
     acpi_task_count++;
     break;
 }

    if (i > acpi_tasks_hiwater)
 atomic_cmpset_int(&acpi_tasks_hiwater, acpi_tasks_hiwater, i);

    if (at == ((void*)0)) {
 printf("AcpiOsExecute: failed to enqueue task, consider increasing "
     "the debug.acpi.max_tasks tunable\n");
 return (AE_NO_MEMORY);
    }

    TASK_INIT(&at->at_task, priority, acpi_task_execute, at);
    at->at_function = Function;
    at->at_context = Context;




    if (acpi_taskq_started) {
 atomic_set_int(&at->at_flag, ACPI_TASK_ENQUEUED);
 taskqueue_enqueue(acpi_taskq, &at->at_task);
 return (AE_OK);
    }
    if (bootverbose)
 printf("AcpiOsExecute: task queue not started\n");

    return (AE_OK);
}
