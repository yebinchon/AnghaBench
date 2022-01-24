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
struct a31dmac_softc {int dummy; } ;
struct a31dmac_channel {int /*<<< orphan*/  index; struct a31dmac_softc* sc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct a31dmac_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(device_t dev, void *priv)
{
	struct a31dmac_channel *ch;
	struct a31dmac_softc *sc;

	ch = priv;
	sc = ch->sc;

	FUNC1(sc, FUNC0(ch->index), 0);
}