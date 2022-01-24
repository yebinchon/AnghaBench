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
typedef  int uint32_t ;
struct a10fb_softc {int dummy; } ;

/* Variables and functions */
 int GCTL_TCON_EN ; 
 int IO0_OUTPUT_TRI_EN ; 
 int IO1_OUTPUT_TRI_EN ; 
 int /*<<< orphan*/  TCON1_IO_TRI ; 
 int /*<<< orphan*/  TCON_GCTL ; 
 int FUNC0 (struct a10fb_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct a10fb_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct a10fb_softc *sc, int onoff)
{
	uint32_t val;

	/* Enable TCON */
	val = FUNC0(sc, TCON_GCTL);
	if (onoff)
		val |= GCTL_TCON_EN;
	else
		val &= ~GCTL_TCON_EN;
	FUNC1(sc, TCON_GCTL, val);

	/* Enable TCON1 IO0/IO1 outputs */
	val = FUNC0(sc, TCON1_IO_TRI);
	if (onoff)
		val &= ~(IO0_OUTPUT_TRI_EN | IO1_OUTPUT_TRI_EN);
	else
		val |= (IO0_OUTPUT_TRI_EN | IO1_OUTPUT_TRI_EN);
	FUNC1(sc, TCON1_IO_TRI, val);
}