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
typedef  int uint64_t ;
struct a10hdmi_softc {int /*<<< orphan*/  clk_lcd; } ;
typedef  int /*<<< orphan*/  clk_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

__attribute__((used)) static int
FUNC4(struct a10hdmi_softc *sc, int *div, int *dbl)
{
	uint64_t lcd_fin, lcd_fout;
	clk_t clk_lcd_parent;
	const char *pname;
	int error;

	error = FUNC2(sc->clk_lcd, &clk_lcd_parent);
	if (error != 0)
		return (error);

	/* Get the LCD CH1 special clock 2 divider */
	error = FUNC0(sc->clk_lcd, &lcd_fout);
	if (error != 0)
		return (error);
	error = FUNC0(clk_lcd_parent, &lcd_fin);
	if (error != 0)
		return (error);
	*div = lcd_fin / lcd_fout;

	/* Detect LCD CH1 special clock using a 1X or 2X source */
	/* XXX */
	pname = FUNC1(clk_lcd_parent);
	if (FUNC3(pname, "pll3") == 0 || FUNC3(pname, "pll7") == 0)
		*dbl = 0;
	else
		*dbl = 1;

	return (0);
}