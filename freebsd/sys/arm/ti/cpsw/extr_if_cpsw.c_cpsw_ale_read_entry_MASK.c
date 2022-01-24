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
typedef  int uint16_t ;
struct cpsw_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPSW_ALE_TBLCTL ; 
 int /*<<< orphan*/  CPSW_ALE_TBLW0 ; 
 int /*<<< orphan*/  CPSW_ALE_TBLW1 ; 
 int /*<<< orphan*/  CPSW_ALE_TBLW2 ; 
 int /*<<< orphan*/  FUNC0 (struct cpsw_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cpsw_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct cpsw_softc *sc, uint16_t idx, uint32_t *ale_entry)
{
	FUNC1(sc, CPSW_ALE_TBLCTL, idx & 1023);
	ale_entry[0] = FUNC0(sc, CPSW_ALE_TBLW0);
	ale_entry[1] = FUNC0(sc, CPSW_ALE_TBLW1);
	ale_entry[2] = FUNC0(sc, CPSW_ALE_TBLW2);
}