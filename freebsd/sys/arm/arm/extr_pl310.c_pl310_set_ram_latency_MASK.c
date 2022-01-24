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
typedef  scalar_t__ uint32_t ;
struct pl310_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ PL310_DATA_RAM_CTRL ; 
 scalar_t__ PL310_TAG_RAM_CTRL ; 
 scalar_t__ RAM_CTRL_READ_MASK ; 
 scalar_t__ RAM_CTRL_READ_SHIFT ; 
 scalar_t__ RAM_CTRL_SETUP_MASK ; 
 scalar_t__ RAM_CTRL_SETUP_SHIFT ; 
 scalar_t__ RAM_CTRL_WRITE_MASK ; 
 scalar_t__ RAM_CTRL_WRITE_SHIFT ; 
 scalar_t__ FUNC1 (struct pl310_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct pl310_softc*,scalar_t__,scalar_t__) ; 

void
FUNC3(struct pl310_softc *sc, uint32_t which_reg,
   uint32_t read, uint32_t write, uint32_t setup)
{
	uint32_t v;

	FUNC0(which_reg == PL310_TAG_RAM_CTRL ||
	    which_reg == PL310_DATA_RAM_CTRL,
	    ("bad pl310 ram latency register address"));

	v = FUNC1(sc, which_reg);
	if (setup != 0) {
		FUNC0(setup <= 8, ("bad pl310 setup latency: %d", setup));
		v &= ~RAM_CTRL_SETUP_MASK;
		v |= (setup - 1) << RAM_CTRL_SETUP_SHIFT;
	}
	if (read != 0) {
		FUNC0(read <= 8, ("bad pl310 read latency: %d", read));
		v &= ~RAM_CTRL_READ_MASK;
		v |= (read - 1) << RAM_CTRL_READ_SHIFT;
	}
	if (write != 0) {
		FUNC0(write <= 8, ("bad pl310 write latency: %d", write));
		v &= ~RAM_CTRL_WRITE_MASK;
		v |= (write - 1) << RAM_CTRL_WRITE_SHIFT;
	}
	FUNC2(sc, which_reg, v);
}