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
typedef  int /*<<< orphan*/  uint32_t ;
struct ipu_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_WRITE_CH_CONF_1 ; 
 int /*<<< orphan*/  DC_WRITE_CH_CONF_5 ; 
 int /*<<< orphan*/  FUNC0 (struct ipu_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipu_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WRITE_CH_CONF_PROG_CHAN_NORMAL ; 
 int /*<<< orphan*/  WRITE_CH_CONF_PROG_CHAN_TYP_MASK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(struct ipu_softc *sc)
{
	uint32_t conf;

	/* channel 1 uses DI1 */
	FUNC1(sc, DC_WRITE_CH_CONF_1, FUNC2(1));

	conf = FUNC0(sc, DC_WRITE_CH_CONF_5);
	conf &= ~WRITE_CH_CONF_PROG_CHAN_TYP_MASK;
	conf |= WRITE_CH_CONF_PROG_CHAN_NORMAL;
	FUNC1(sc, DC_WRITE_CH_CONF_5, conf);

	/* TODO: enable clock */
}