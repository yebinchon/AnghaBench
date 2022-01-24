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
 int /*<<< orphan*/  CSR_MIIMNG ; 
 int /*<<< orphan*/  FUNC0 (struct fv_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int MII_CLK ; 
 int MII_DOUT ; 
 int MII_WR ; 

__attribute__((used)) static int
FUNC2(struct fv_softc *sc, int data, int count)
{
	int bit;

	while(count--) {
		bit = ((data) >> count) & 0x1 ? MII_DOUT : 0;
		FUNC0(sc, CSR_MIIMNG, bit | MII_WR);
		FUNC1(10);
		FUNC0(sc, CSR_MIIMNG, bit | MII_WR | MII_CLK);
		FUNC1(10);
	}

	return (0);
}