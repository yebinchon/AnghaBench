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
struct aac_softc {int /*<<< orphan*/  aac_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  Giant ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aac_softc*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct aac_softc *sc;

	sc = arg;
	FUNC1(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");
	FUNC2(&Giant);
	FUNC0(sc->aac_dev);
	FUNC3(&Giant);
}