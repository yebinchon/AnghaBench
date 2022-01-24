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
struct fv_softc {int dummy; } ;

/* Variables and functions */
 int MII_WRCMD ; 
 int /*<<< orphan*/  FUNC0 (struct fv_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fv_softc*,int,int) ; 

__attribute__((used)) static void
FUNC2(struct fv_softc *sc, int cmd)
{
	if (cmd == MII_WRCMD) {
		FUNC1(sc, 0x02, 2);
	} else {
		FUNC0(sc, 1);
	}
}