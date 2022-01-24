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
struct rk_i2c_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rk_i2c_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rk_i2c_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rk_i2c_softc*) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct rk_i2c_softc *sc;

	sc = (struct rk_i2c_softc *)arg;

	FUNC0(sc);
	FUNC2(sc);
	FUNC1(sc);
}