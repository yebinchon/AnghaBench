#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct acpi_cpu_softc {int /*<<< orphan*/  cpu_pcpu; int /*<<< orphan*/  cpu_handle; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
#define  ACPI_IVAR_HANDLE 130 
#define  CPU_IVAR_NOMINAL_MHZ 129 
#define  CPU_IVAR_PCPU 128 
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct acpi_cpu_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tsc_freq ; 
 int /*<<< orphan*/  tsc_is_invariant ; 

__attribute__((used)) static int
FUNC2(device_t dev, device_t child, int index, uintptr_t *result)
{
    struct acpi_cpu_softc *sc;

    sc = FUNC1(dev);
    switch (index) {
    case ACPI_IVAR_HANDLE:
	*result = (uintptr_t)sc->cpu_handle;
	break;
    case CPU_IVAR_PCPU:
	*result = (uintptr_t)sc->cpu_pcpu;
	break;
#if defined(__amd64__) || defined(__i386__)
    case CPU_IVAR_NOMINAL_MHZ:
	if (tsc_is_invariant) {
	    *result = (uintptr_t)(FUNC0(&tsc_freq) / 1000000);
	    break;
	}
	/* FALLTHROUGH */
#endif
    default:
	return (ENOENT);
    }
    return (0);
}