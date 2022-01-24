#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint64_t ;
struct TYPE_7__ {int /*<<< orphan*/  spa_meta_objset; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_8__ {scalar_t__ db_data; } ;
typedef  TYPE_2__ dmu_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  NV_ENCODE_XDR ; 
 size_t FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_CONFIG_BLOCKSIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,size_t,char*,int /*<<< orphan*/ *) ; 
 char* FUNC7 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,size_t) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char**,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(spa_t *spa, uint64_t obj, nvlist_t *nv, dmu_tx_t *tx)
{
	char *packed = NULL;
	size_t bufsize;
	size_t nvsize = 0;
	dmu_buf_t *db;

	FUNC1(FUNC10(nv, &nvsize, NV_ENCODE_XDR) == 0);

	/*
	 * Write full (SPA_CONFIG_BLOCKSIZE) blocks of configuration
	 * information.  This avoids the dmu_buf_will_dirty() path and
	 * saves us a pre-read to get data we don't actually care about.
	 */
	bufsize = FUNC0((uint64_t)nvsize, SPA_CONFIG_BLOCKSIZE);
	packed = FUNC7(bufsize, KM_SLEEP);

	FUNC1(FUNC9(nv, &packed, &nvsize, NV_ENCODE_XDR,
	    KM_SLEEP) == 0);
	FUNC2(packed + nvsize, bufsize - nvsize);

	FUNC6(spa->spa_meta_objset, obj, 0, bufsize, packed, tx);

	FUNC8(packed, bufsize);

	FUNC1(0 == FUNC3(spa->spa_meta_objset, obj, FTAG, &db));
	FUNC5(db, tx);
	*(uint64_t *)db->db_data = nvsize;
	FUNC4(db, FTAG);
}