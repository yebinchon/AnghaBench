
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_task_ctx {int at_flag; int at_context; int (* at_function ) (int ) ;} ;


 int ACPI_TASK_ENQUEUED ;
 int ACPI_TASK_USED ;
 int acpi_task_count ;
 int atomic_clear_int (int *,int) ;
 int stub1 (int ) ;

__attribute__((used)) static void
acpi_task_execute(void *context, int pending)
{
    struct acpi_task_ctx *at;

    at = (struct acpi_task_ctx *)context;
    at->at_function(at->at_context);
    atomic_clear_int(&at->at_flag, ACPI_TASK_USED | ACPI_TASK_ENQUEUED);
    acpi_task_count--;
}
