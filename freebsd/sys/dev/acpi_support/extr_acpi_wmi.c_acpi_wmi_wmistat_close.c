
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {struct acpi_wmi_softc* si_drv1; } ;
struct acpi_wmi_softc {scalar_t__ wmistat_open_pid; int wmistat_bufptr; int wmistat_sbuf; } ;


 int ACPI_SERIAL_BEGIN (int ) ;
 int ACPI_SERIAL_END (int ) ;
 int EBADF ;
 int acpi_wmi ;
 int sbuf_delete (int *) ;

__attribute__((used)) static int
acpi_wmi_wmistat_close(struct cdev* dev, int flags, int mode,
    struct thread *td)
{
 struct acpi_wmi_softc *sc;
 int ret;

 if (dev == ((void*)0) || dev->si_drv1 == ((void*)0))
  return (EBADF);
 sc = dev->si_drv1;

 ACPI_SERIAL_BEGIN(acpi_wmi);
 if (sc->wmistat_open_pid == 0) {
  ret = EBADF;
 }
 else {
  if (sc->wmistat_bufptr != -1) {
   sbuf_delete(&sc->wmistat_sbuf);
   sc->wmistat_bufptr = -1;
  }
  sc->wmistat_open_pid = 0;
  ret = 0;
 }
 ACPI_SERIAL_END(acpi_wmi);

 return (ret);
}
