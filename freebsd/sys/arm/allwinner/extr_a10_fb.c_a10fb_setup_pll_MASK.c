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
typedef  int /*<<< orphan*/  uint64_t ;
struct a10fb_softc {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  clk_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(struct a10fb_softc *sc, uint64_t freq)
{
	clk_t clk_sclk1, clk_sclk2;
	int error;

	error = FUNC1(sc->dev, 0, "lcd_ch1_sclk1", &clk_sclk1);
	if (error != 0) {
		FUNC3(sc->dev, "cannot find clk 'lcd_ch1_sclk1'\n");
		return (error);
	}
	error = FUNC1(sc->dev, 0, "lcd_ch1_sclk2", &clk_sclk2);
	if (error != 0) {
		FUNC3(sc->dev, "cannot find clk 'lcd_ch1_sclk2'\n");
		return (error);
	}

	error = FUNC2(clk_sclk2, freq, 0);
	if (error != 0) {
		FUNC3(sc->dev, "cannot set lcd ch1 frequency\n");
		return (error);
	}
	error = FUNC0(clk_sclk2);
	if (error != 0) {
		FUNC3(sc->dev, "cannot enable lcd ch1 sclk2\n");
		return (error);
	}
	error = FUNC0(clk_sclk1);
	if (error != 0) {
		FUNC3(sc->dev, "cannot enable lcd ch1 sclk1\n");
		return (error);
	}

	return (0);
}