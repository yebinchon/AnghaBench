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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int boolean_t ;

/* Variables and functions */
 scalar_t__ ZPL_VERSION ; 
 scalar_t__ ZPL_VERSION_FUID ; 
 scalar_t__ ZPL_VERSION_SA ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static int
FUNC2(uint64_t spa_vers, nvlist_t *createprops,
    nvlist_t *zplprops, boolean_t *is_ci)
{
	boolean_t fuids_ok;
	boolean_t sa_ok;
	uint64_t zplver = ZPL_VERSION;
	int error;

	zplver = FUNC1(spa_vers);
	fuids_ok = (zplver >= ZPL_VERSION_FUID);
	sa_ok = (zplver >= ZPL_VERSION_SA);

	error = FUNC0(NULL, zplver, fuids_ok, sa_ok,
	    createprops, zplprops, is_ci);
	return (error);
}