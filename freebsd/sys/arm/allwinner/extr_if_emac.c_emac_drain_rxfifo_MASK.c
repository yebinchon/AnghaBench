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
struct emac_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct emac_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EMAC_RX_FBC ; 
 int /*<<< orphan*/  EMAC_RX_IO_DATA ; 

__attribute__((used)) static void
FUNC1(struct emac_softc *sc)
{
	uint32_t data;

	while (FUNC0(sc, EMAC_RX_FBC) > 0)
		data = FUNC0(sc, EMAC_RX_IO_DATA);
}