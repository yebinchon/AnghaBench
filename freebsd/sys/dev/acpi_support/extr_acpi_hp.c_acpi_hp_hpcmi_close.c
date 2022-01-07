
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {struct acpi_hp_softc* si_drv1; } ;
struct acpi_hp_softc {scalar_t__ hpcmi_open_pid; int hpcmi_bufptr; int hpcmi_sbuf; } ;


 int ACPI_SERIAL_BEGIN (int ) ;
 int ACPI_SERIAL_END (int ) ;
 int EBADF ;
 int hp ;
 int sbuf_delete (int *) ;

__attribute__((used)) static int
acpi_hp_hpcmi_close(struct cdev* dev, int flags, int mode, struct thread *td)
{
 struct acpi_hp_softc *sc;
 int ret;

 if (dev == ((void*)0) || dev->si_drv1 == ((void*)0))
  return (EBADF);
 sc = dev->si_drv1;

 ACPI_SERIAL_BEGIN(hp);
 if (sc->hpcmi_open_pid == 0) {
  ret = EBADF;
 }
 else {
  if (sc->hpcmi_bufptr != -1) {
   sbuf_delete(&sc->hpcmi_sbuf);
   sc->hpcmi_bufptr = -1;
  }
  sc->hpcmi_open_pid = 0;
  ret = 0;
 }
 ACPI_SERIAL_END(hp);

 return (ret);
}
