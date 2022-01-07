
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int at_task; int at_flag; } ;


 int ACPI_TASK_ENQUEUED ;
 int ACPI_TASK_USED ;
 int M_NOWAIT ;
 int PWAIT ;
 int acpi_max_tasks ;
 int acpi_max_threads ;
 scalar_t__ acpi_task_count ;
 int acpi_taskq ;
 int acpi_taskq_started ;
 TYPE_1__* acpi_tasks ;
 scalar_t__ atomic_cmpset_int (int *,int,int) ;
 scalar_t__ bootverbose ;
 int printf (char*,scalar_t__) ;
 int taskqueue_create_fast (char*,int ,int *,int *) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_start_threads (int *,int ,int ,char*) ;
 int taskqueue_thread_enqueue ;

__attribute__((used)) static void
acpi_taskq_init(void *arg)
{
    int i;

    acpi_taskq = taskqueue_create_fast("acpi_task", M_NOWAIT,
 &taskqueue_thread_enqueue, &acpi_taskq);
    taskqueue_start_threads(&acpi_taskq, acpi_max_threads, PWAIT, "acpi_task");
    if (acpi_task_count > 0) {
 if (bootverbose)
     printf("AcpiOsExecute: enqueue %d pending tasks\n",
  acpi_task_count);
 for (i = 0; i < acpi_max_tasks; i++)
     if (atomic_cmpset_int(&acpi_tasks[i].at_flag, ACPI_TASK_USED,
  ACPI_TASK_USED | ACPI_TASK_ENQUEUED))
  taskqueue_enqueue(acpi_taskq, &acpi_tasks[i].at_task);
    }
    acpi_taskq_started = 1;
}
