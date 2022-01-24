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
struct host1x_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct host1x_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct host1x_softc*) ; 

__attribute__((used)) static void
FUNC2(void *arg)
{
	struct host1x_softc *sc;

	sc = (struct host1x_softc *)arg;
	FUNC0(sc);
	FUNC1(sc);
}