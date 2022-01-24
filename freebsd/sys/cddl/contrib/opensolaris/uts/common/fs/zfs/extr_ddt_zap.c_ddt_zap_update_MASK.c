#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uchar_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_3__ {int /*<<< orphan*/  dde_key; int /*<<< orphan*/  dde_phys; } ;
typedef  TYPE_1__ ddt_entry_t ;
typedef  int /*<<< orphan*/  cbuf ;

/* Variables and functions */
 int /*<<< orphan*/  DDT_KEY_WORDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(objset_t *os, uint64_t object, ddt_entry_t *dde, dmu_tx_t *tx)
{
	uchar_t cbuf[sizeof (dde->dde_phys) + 1];
	uint64_t csize;

	csize = FUNC0(dde->dde_phys, cbuf,
	    sizeof (dde->dde_phys), sizeof (cbuf));

	return (FUNC1(os, object, (uint64_t *)&dde->dde_key,
	    DDT_KEY_WORDS, 1, csize, cbuf, tx));
}