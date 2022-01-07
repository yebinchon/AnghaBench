
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_cpu_softc {int cpu_pcpu; int cpu_handle; } ;
typedef int device_t ;





 int ENOENT ;
 int atomic_load_acq_64 (int *) ;
 struct acpi_cpu_softc* device_get_softc (int ) ;
 int tsc_freq ;
 int tsc_is_invariant ;

__attribute__((used)) static int
acpi_cpu_read_ivar(device_t dev, device_t child, int index, uintptr_t *result)
{
    struct acpi_cpu_softc *sc;

    sc = device_get_softc(dev);
    switch (index) {
    case 130:
 *result = (uintptr_t)sc->cpu_handle;
 break;
    case 128:
 *result = (uintptr_t)sc->cpu_pcpu;
 break;

    case 129:
 if (tsc_is_invariant) {
     *result = (uintptr_t)(atomic_load_acq_64(&tsc_freq) / 1000000);
     break;
 }


    default:
 return (ENOENT);
    }
    return (0);
}
