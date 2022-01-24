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
struct timeval {int /*<<< orphan*/  tv_sec; } ;
struct aac_softc {int /*<<< orphan*/  aac_daemontime; int /*<<< orphan*/  aac_io_lock; } ;
struct aac_fib {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  SendHostTime ; 
 int /*<<< orphan*/  FUNC0 (struct aac_softc*,struct aac_fib**) ; 
 int /*<<< orphan*/  FUNC1 (struct aac_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct aac_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aac_fib*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct timeval*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	struct timeval tv;
	struct aac_softc *sc;
	struct aac_fib *fib;

	sc = arg;
	FUNC7(&sc->aac_io_lock, MA_OWNED);

	if (FUNC4(&sc->aac_daemontime) ||
	    FUNC3(&sc->aac_daemontime) == 0)
		return;
	FUNC6(&tv);
	FUNC0(sc, &fib);
	*(uint32_t *)fib->data = tv.tv_sec;
	FUNC2(sc, SendHostTime, 0, fib, sizeof(uint32_t));
	FUNC1(sc);
	FUNC5(&sc->aac_daemontime, 30 * 60 * hz);
}