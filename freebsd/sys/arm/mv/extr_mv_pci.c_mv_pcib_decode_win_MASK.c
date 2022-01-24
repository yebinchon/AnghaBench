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
struct mv_pcib_softc {int /*<<< orphan*/  sc_mem_size; int /*<<< orphan*/  sc_mem_base; int /*<<< orphan*/  sc_io_size; int /*<<< orphan*/  sc_io_base; int /*<<< orphan*/  sc_mem_win_attr; int /*<<< orphan*/  sc_win_target; int /*<<< orphan*/  sc_io_win_attr; int /*<<< orphan*/  sc_dev; } ;
struct mv_pci_range {int /*<<< orphan*/  len; int /*<<< orphan*/  base_parent; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct mv_pci_range*,struct mv_pci_range*) ; 

__attribute__((used)) static int
FUNC3(phandle_t node, struct mv_pcib_softc *sc)
{
	struct mv_pci_range io_space, mem_space;
	device_t dev;
	int error;

	dev = sc->sc_dev;

	if ((error = FUNC2(node, &io_space, &mem_space)) != 0) {
		FUNC1(dev, "could not retrieve 'ranges' data\n");
		return (error);
	}

	/* Configure CPU decoding windows */
	error = FUNC0(sc->sc_win_target,
	    sc->sc_io_win_attr, io_space.base_parent, io_space.len, ~0);
	if (error < 0) {
		FUNC1(dev, "could not set up CPU decode "
		    "window for PCI IO\n");
		return (ENXIO);
	}
	error = FUNC0(sc->sc_win_target,
	    sc->sc_mem_win_attr, mem_space.base_parent, mem_space.len,
	    mem_space.base_parent);
	if (error < 0) {
		FUNC1(dev, "could not set up CPU decode "
		    "windows for PCI MEM\n");
		return (ENXIO);
	}

	sc->sc_io_base = io_space.base_parent;
	sc->sc_io_size = io_space.len;

	sc->sc_mem_base = mem_space.base_parent;
	sc->sc_mem_size = mem_space.len;

	return (0);
}