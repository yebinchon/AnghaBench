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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct ti_pruss_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ti_pruss_softc*,size_t const) ; 
 int /*<<< orphan*/  FUNC1 (struct ti_pruss_softc*,size_t const,int) ; 

__attribute__((used)) static __inline void
FUNC2(struct ti_pruss_softc *sc, uint32_t basereg, uint8_t index, uint8_t content)
{
	const size_t regadr = basereg + index & ~0x03;
	const size_t bitpos = (index & 0x03) * 8;
	uint32_t rmw = FUNC0(sc, regadr);
	rmw = (rmw & ~( 0xF << bitpos)) | ( (content & 0xF) << bitpos);
	FUNC1(sc, regadr, rmw);
}