
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct acpi_ioctl_hook {void* arg; int fn; int cmd; } ;
typedef int acpi_ioctl_fn ;


 int ACPI_LOCK (int ) ;
 int ACPI_UNLOCK (int ) ;
 int ENOMEM ;
 int M_ACPIDEV ;
 int M_NOWAIT ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct acpi_ioctl_hook*,int ) ;
 int acpi ;
 int acpi_ioctl_hooks ;
 int acpi_ioctl_hooks_initted ;
 int link ;
 struct acpi_ioctl_hook* malloc (int,int ,int ) ;

int
acpi_register_ioctl(u_long cmd, acpi_ioctl_fn fn, void *arg)
{
    struct acpi_ioctl_hook *hp;

    if ((hp = malloc(sizeof(*hp), M_ACPIDEV, M_NOWAIT)) == ((void*)0))
 return (ENOMEM);
    hp->cmd = cmd;
    hp->fn = fn;
    hp->arg = arg;

    ACPI_LOCK(acpi);
    if (acpi_ioctl_hooks_initted == 0) {
 TAILQ_INIT(&acpi_ioctl_hooks);
 acpi_ioctl_hooks_initted = 1;
    }
    TAILQ_INSERT_TAIL(&acpi_ioctl_hooks, hp, link);
    ACPI_UNLOCK(acpi);

    return (0);
}
