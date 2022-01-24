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
struct aml8726_sdxc_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AML_SDXC_SOFT_RESET ; 
 int /*<<< orphan*/  AML_SDXC_SOFT_RESET_REG ; 
 int /*<<< orphan*/  FUNC0 (struct aml8726_sdxc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aml8726_sdxc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(struct aml8726_sdxc_softc *sc)
{

	FUNC1(sc, AML_SDXC_SOFT_RESET_REG, AML_SDXC_SOFT_RESET);
	FUNC0(sc, AML_SDXC_SOFT_RESET_REG);
	FUNC2(5);
}