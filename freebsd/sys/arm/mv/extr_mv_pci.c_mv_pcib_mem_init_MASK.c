#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* rm_type; } ;
struct mv_pcib_softc {TYPE_1__ sc_io_rman; TYPE_1__ sc_mem_rman; scalar_t__ sc_io_size; scalar_t__ sc_io_base; scalar_t__ sc_mem_size; scalar_t__ sc_mem_base; } ;

/* Variables and functions */
 void* RMAN_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC3(struct mv_pcib_softc *sc)
{
	int err;

	/*
	 * Memory management.
	 */
	sc->sc_mem_rman.rm_type = RMAN_ARRAY;
	err = FUNC1(&sc->sc_mem_rman);
	if (err)
		return (err);

	sc->sc_io_rman.rm_type = RMAN_ARRAY;
	err = FUNC1(&sc->sc_io_rman);
	if (err) {
		FUNC0(&sc->sc_mem_rman);
		return (err);
	}

	err = FUNC2(&sc->sc_mem_rman, sc->sc_mem_base,
	    sc->sc_mem_base + sc->sc_mem_size - 1);
	if (err)
		goto error;

	err = FUNC2(&sc->sc_io_rman, sc->sc_io_base,
	    sc->sc_io_base + sc->sc_io_size - 1);
	if (err)
		goto error;

	return (0);

error:
	FUNC0(&sc->sc_mem_rman);
	FUNC0(&sc->sc_io_rman);

	return (err);
}