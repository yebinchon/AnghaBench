#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_result_t ;
struct TYPE_6__ {scalar_t__ search_handle; int /*<<< orphan*/ * dirname; } ;
typedef  TYPE_1__ isc_dir_t ;

/* Variables and functions */
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

isc_result_t
FUNC4(isc_dir_t *dir) {
	isc_result_t result;

	FUNC0(FUNC1(dir) && dir->search_handle != INVALID_HANDLE_VALUE);
	FUNC0(dir->dirname != NULL);

	/*
	 * NT cannot reposition the seek pointer to the beginning of the
	 * the directory stream, but rather the directory needs to be
	 * closed and reopened.  The latter might fail.
	 */

	FUNC2(dir);

	result = FUNC3(dir);

	return (result);
}