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
struct ti_adc_softc {int dummy; } ;

/* Variables and functions */
 int ADC_IRQ_FIFO1_THRES ; 
 int /*<<< orphan*/  FUNC0 (struct ti_adc_softc*) ; 

__attribute__((used)) static void
FUNC1(struct ti_adc_softc *sc, uint32_t status)
{
	/* Read the available data. */
	if (status & ADC_IRQ_FIFO1_THRES)
		FUNC0(sc);

}