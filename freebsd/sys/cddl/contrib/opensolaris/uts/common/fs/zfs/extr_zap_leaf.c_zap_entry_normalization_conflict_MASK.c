#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ zap_normflags; } ;
typedef  TYPE_1__ zap_t ;
typedef  int /*<<< orphan*/  zap_name_t ;
struct TYPE_7__ {scalar_t__ zeh_hash; scalar_t__ zeh_cd; int /*<<< orphan*/  zeh_leaf; } ;
typedef  TYPE_2__ zap_entry_handle_t ;
typedef  scalar_t__ uint16_t ;
struct zap_leaf_entry {scalar_t__ le_next; scalar_t__ le_hash; scalar_t__ le_cd; int /*<<< orphan*/  le_name_numints; int /*<<< orphan*/  le_name_chunk; } ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 scalar_t__ CHAIN_END ; 
 scalar_t__* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  MT_NORMALIZE ; 
 struct zap_leaf_entry* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

boolean_t
FUNC5(zap_entry_handle_t *zeh, zap_name_t *zn,
    const char *name, zap_t *zap)
{
	struct zap_leaf_entry *le;
	boolean_t allocdzn = B_FALSE;

	if (zap->zap_normflags == 0)
		return (B_FALSE);

	for (uint16_t chunk = *FUNC0(zeh->zeh_leaf, zeh->zeh_hash);
	    chunk != CHAIN_END; chunk = le->le_next) {
		le = FUNC1(zeh->zeh_leaf, chunk);
		if (le->le_hash != zeh->zeh_hash)
			continue;
		if (le->le_cd == zeh->zeh_cd)
			continue;

		if (zn == NULL) {
			zn = FUNC3(zap, name, MT_NORMALIZE);
			allocdzn = B_TRUE;
		}
		if (FUNC2(zeh->zeh_leaf, zn,
		    le->le_name_chunk, le->le_name_numints)) {
			if (allocdzn)
				FUNC4(zn);
			return (B_TRUE);
		}
	}
	if (allocdzn)
		FUNC4(zn);
	return (B_FALSE);
}