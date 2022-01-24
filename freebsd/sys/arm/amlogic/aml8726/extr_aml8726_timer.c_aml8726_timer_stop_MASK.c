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
struct eventtimer {scalar_t__ et_priv; } ;
struct aml8726_timer_softc {int dummy; } ;

/* Variables and functions */
 int AML_TIMER_A_EN ; 
 int /*<<< orphan*/  FUNC0 (struct aml8726_timer_softc*) ; 
 int /*<<< orphan*/  AML_TIMER_MUX_REG ; 
 int /*<<< orphan*/  FUNC1 (struct aml8726_timer_softc*) ; 
 int FUNC2 (struct aml8726_timer_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aml8726_timer_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct eventtimer *et)
{
	struct aml8726_timer_softc *sc =
	    (struct aml8726_timer_softc *)et->et_priv;

	FUNC0(sc);

	FUNC3(sc, AML_TIMER_MUX_REG,
	    (FUNC2(sc, AML_TIMER_MUX_REG) & ~AML_TIMER_A_EN));

	FUNC1(sc);

	return (0);
}