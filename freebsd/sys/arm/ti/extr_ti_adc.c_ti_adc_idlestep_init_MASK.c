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
 int /*<<< orphan*/  ADC_IDLECONFIG ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int ADC_STEP_YNN_SW ; 
 int ADC_STEP_YPN_SW ; 
 int /*<<< orphan*/  FUNC2 (struct ti_adc_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct ti_adc_softc *sc)
{
	uint32_t val;

	val = ADC_STEP_YNN_SW | FUNC0(8) | FUNC1(8) | ADC_STEP_YPN_SW;

	FUNC2(sc, ADC_IDLECONFIG, val);
}