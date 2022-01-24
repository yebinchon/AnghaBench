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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int MII_PREAMBLE ; 
 int MII_RDCMD ; 
 struct fv_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fv_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fv_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fv_softc*,int,int) ; 
 int /*<<< orphan*/  miibus_mtx ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(device_t dev, int phy, int reg)
{
	struct fv_softc * sc = FUNC0(dev);
	int		result;

	FUNC4(&miibus_mtx);
	FUNC3(sc, MII_PREAMBLE, 32);
	FUNC3(sc, MII_RDCMD, 4);
	FUNC3(sc, phy, 5);
	FUNC3(sc, reg, 5);
	FUNC2(sc, MII_RDCMD);
	result = FUNC1(sc, 16);
	FUNC2(sc, MII_RDCMD);
	FUNC5(&miibus_mtx);

	return (result);
}