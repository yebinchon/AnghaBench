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
struct aac_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aac_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  AAC_RKT_ODBR ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 int /*<<< orphan*/  FUNC1 (struct aac_softc*,char*,char*) ; 

__attribute__((used)) static void
FUNC2(struct aac_softc *sc, int mask)
{
	FUNC1(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

	FUNC0(sc, AAC_RKT_ODBR, mask);
}