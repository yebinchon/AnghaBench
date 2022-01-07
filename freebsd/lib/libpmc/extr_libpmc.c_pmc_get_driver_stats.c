
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_op_getdriverstats {int pm_log_sweeps; int pm_buffer_requests_failed; int pm_buffer_requests; int pm_syscall_errors; int pm_syscalls; int pm_intr_bufferfull; int pm_intr_processed; int pm_intr_ignored; } ;
struct pmc_driverstats {int pm_log_sweeps; int pm_buffer_requests_failed; int pm_buffer_requests; int pm_syscall_errors; int pm_syscalls; int pm_intr_bufferfull; int pm_intr_processed; int pm_intr_ignored; } ;


 int GETDRIVERSTATS ;
 scalar_t__ PMC_CALL (int ,struct pmc_op_getdriverstats*) ;

int
pmc_get_driver_stats(struct pmc_driverstats *ds)
{
 struct pmc_op_getdriverstats gms;

 if (PMC_CALL(GETDRIVERSTATS, &gms) < 0)
  return (-1);


 ds->pm_intr_ignored = gms.pm_intr_ignored;
 ds->pm_intr_processed = gms.pm_intr_processed;
 ds->pm_intr_bufferfull = gms.pm_intr_bufferfull;
 ds->pm_syscalls = gms.pm_syscalls;
 ds->pm_syscall_errors = gms.pm_syscall_errors;
 ds->pm_buffer_requests = gms.pm_buffer_requests;
 ds->pm_buffer_requests_failed = gms.pm_buffer_requests_failed;
 ds->pm_log_sweeps = gms.pm_log_sweeps;
 return (0);
}
