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
typedef  int /*<<< orphan*/  zfs_space_check_t ;
typedef  int /*<<< orphan*/  dsl_syncfunc_t ;
typedef  int /*<<< orphan*/  dsl_sigfunc_t ;
typedef  int /*<<< orphan*/  dsl_checkfunc_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int FUNC0 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC1(const char *pool, dsl_checkfunc_t *checkfunc,
    dsl_syncfunc_t *syncfunc, dsl_sigfunc_t *sigfunc, void *arg,
    int blocks_modified, zfs_space_check_t space_check)
{
	return (FUNC0(pool, checkfunc, syncfunc, sigfunc, arg,
	    blocks_modified, space_check, B_FALSE));
}