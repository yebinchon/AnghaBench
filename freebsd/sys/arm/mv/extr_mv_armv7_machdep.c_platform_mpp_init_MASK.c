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
typedef  int /*<<< orphan*/  u_long ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  reg ;
typedef  int /*<<< orphan*/  pinmap ;
typedef  int /*<<< orphan*/  pin_count ;
typedef  int /*<<< orphan*/  pin_cells ;
typedef  int phandle_t ;
typedef  int pcell_t ;
typedef  int /*<<< orphan*/  mpp ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int ERANGE ; 
 int MPP_PINS_PER_REG ; 
 int MPP_PIN_CELLS ; 
 int MPP_PIN_MAX ; 
 scalar_t__ FUNC0 (int,int) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (int,char*,int*,int) ; 
 int FUNC3 (int,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC8 (int*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ fdt_immr_va ; 
 int /*<<< orphan*/  fdtbus_bs_tag ; 
 scalar_t__ FUNC10 (int,char*) ; 

__attribute__((used)) static int
FUNC11(void)
{
	pcell_t pinmap[MPP_PIN_MAX * MPP_PIN_CELLS];
	int mpp[MPP_PIN_MAX];
	uint32_t ctrl_val, ctrl_offset;
	pcell_t reg[4];
	u_long start, size;
	phandle_t node;
	pcell_t pin_cells, *pinmap_ptr, pin_count;
	ssize_t len;
	int par_addr_cells, par_size_cells;
	int tuple_size, tuples, rv, pins, i, j;
	int mpp_pin, mpp_function;

	/*
	 * Try to access the MPP node directly i.e. through /aliases/mpp.
	 */
	if ((node = FUNC1("mpp")) != -1)
		if (FUNC10(node, "mrvl,mpp"))
			goto moveon;
	/*
	 * Find the node the long way.
	 */
	if ((node = FUNC1("/")) == -1)
		return (ENXIO);

	if ((node = FUNC9(node, "simple-bus", 0)) == 0)
		return (ENXIO);

	if ((node = FUNC9(node, "mrvl,mpp", 0)) == 0)
		/*
		 * No MPP node. Fall back to how MPP got set by the
		 * first-stage loader and try to continue booting.
		 */
		return (0);
moveon:
	/*
	 * Process 'reg' prop.
	 */
	if ((rv = FUNC7(FUNC4(node), &par_addr_cells,
	    &par_size_cells)) != 0)
		return(ENXIO);

	tuple_size = sizeof(pcell_t) * (par_addr_cells + par_size_cells);
	len = FUNC3(node, "reg", reg, sizeof(reg));
	tuples = len / tuple_size;
	if (tuple_size <= 0)
		return (EINVAL);

	rv = FUNC8(reg, par_addr_cells, par_size_cells,
	    &start, &size);
	if (rv != 0)
		return (rv);
	start += fdt_immr_va;

	/*
	 * Process 'pin-count' and 'pin-map' props.
	 */
	if (FUNC2(node, "pin-count", &pin_count, sizeof(pin_count)) <= 0)
		return (ENXIO);
	if (pin_count > MPP_PIN_MAX)
		return (ERANGE);

	if (FUNC2(node, "#pin-cells", &pin_cells, sizeof(pin_cells)) <= 0)
		pin_cells = MPP_PIN_CELLS;
	if (pin_cells > MPP_PIN_CELLS)
		return (ERANGE);
	tuple_size = sizeof(pcell_t) * pin_cells;

	FUNC6(pinmap, sizeof(pinmap));
	len = FUNC2(node, "pin-map", pinmap, sizeof(pinmap));
	if (len <= 0)
		return (ERANGE);
	if (len % tuple_size)
		return (ERANGE);
	pins = len / tuple_size;
	if (pins > pin_count)
		return (ERANGE);
	/*
	 * Fill out a "mpp[pin] => function" table. All pins unspecified in
	 * the 'pin-map' property are defaulted to 0 function i.e. GPIO.
	 */
	FUNC6(mpp, sizeof(mpp));
	pinmap_ptr = pinmap;
	for (i = 0; i < pins; i++) {
		mpp_pin = *pinmap_ptr;
		mpp_function = *(pinmap_ptr + 1);
		mpp[mpp_pin] = mpp_function;
		pinmap_ptr += pin_cells;
	}

	/*
	 * Prepare and program MPP control register values.
	 */
	ctrl_offset = 0;
	for (i = 0; i < pin_count;) {
		ctrl_val = 0;

		for (j = 0; j < MPP_PINS_PER_REG; j++) {
			if (i + j == pin_count - 1)
				break;
			ctrl_val |= FUNC0(i + j, mpp[i + j]);
		}
		i += MPP_PINS_PER_REG;
		FUNC5(fdtbus_bs_tag, start, ctrl_offset,
		    ctrl_val);

		ctrl_offset += 4;
	}

	return (0);
}