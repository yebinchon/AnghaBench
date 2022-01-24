#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_8__ {int /*<<< orphan*/ * gme_ds; int /*<<< orphan*/  guid; } ;
typedef  TYPE_1__ guid_map_entry_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;
struct TYPE_9__ {int /*<<< orphan*/  ds_guid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC9(const char *name, avl_tree_t *guid_map, uint64_t snapobj)
{
	dsl_pool_t *dp;
	dsl_dataset_t *snapds;
	guid_map_entry_t *gmep;
	int err;

	FUNC0(guid_map != NULL);

	err = FUNC5(name, FTAG, &dp);
	if (err != 0)
		return (err);
	gmep = FUNC7(sizeof (*gmep), KM_SLEEP);
	err = FUNC2(dp, snapobj, gmep, &snapds);
	if (err == 0) {
		gmep->guid = FUNC4(snapds)->ds_guid;
		gmep->gme_ds = snapds;
		FUNC1(guid_map, gmep);
		FUNC3(snapds, gmep);
	} else
		FUNC8(gmep, sizeof (*gmep));

	FUNC6(dp, FTAG);
	return (err);
}