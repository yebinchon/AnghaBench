
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_proc; } ;
struct cdev {struct acpi_wmi_softc* si_drv1; } ;
struct acpi_wmi_softc {scalar_t__ wmistat_open_pid; scalar_t__ wmistat_bufptr; int wmistat_sbuf; } ;
struct TYPE_2__ {scalar_t__ p_pid; } ;


 int ACPI_SERIAL_BEGIN (int ) ;
 int ACPI_SERIAL_END (int ) ;
 int EBADF ;
 int EBUSY ;
 int ENXIO ;
 int SBUF_AUTOEXTEND ;
 int acpi_wmi ;
 int * sbuf_new (int *,int *,int,int ) ;

__attribute__((used)) static int
acpi_wmi_wmistat_open(struct cdev* dev, int flags, int mode, struct thread *td)
{
 struct acpi_wmi_softc *sc;
 int ret;

 if (dev == ((void*)0) || dev->si_drv1 == ((void*)0))
  return (EBADF);
 sc = dev->si_drv1;

 ACPI_SERIAL_BEGIN(acpi_wmi);
 if (sc->wmistat_open_pid != 0) {
  ret = EBUSY;
 }
 else {
  if (sbuf_new(&sc->wmistat_sbuf, ((void*)0), 4096, SBUF_AUTOEXTEND)
       == ((void*)0)) {
   ret = ENXIO;
  } else {
   sc->wmistat_open_pid = td->td_proc->p_pid;
   sc->wmistat_bufptr = 0;
   ret = 0;
  }
 }
 ACPI_SERIAL_END(acpi_wmi);

 return (ret);
}
