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
typedef  int u_char ;
struct aml8726_rtc_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aml8726_rtc_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct aml8726_rtc_softc*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct aml8726_rtc_softc*) ; 

__attribute__((used)) static int
FUNC3(struct aml8726_rtc_softc *sc, u_char sreg, uint32_t val)
{
	u_char addr;
	int error;

	/* write is indicated by lsb = 1 */
	addr = (sreg << 1) | 1;

	error = FUNC2(sc);

	if (error)
		return (error);

	FUNC1(sc, val);
	FUNC0(sc, addr);

	return (0);
}