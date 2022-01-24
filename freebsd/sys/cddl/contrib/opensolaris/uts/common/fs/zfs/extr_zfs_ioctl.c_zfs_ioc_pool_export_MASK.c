#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  zc_name; int /*<<< orphan*/  zc_guid; int /*<<< orphan*/  zc_cookie; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(zfs_cmd_t *zc)
{
	int error;
	boolean_t force = (boolean_t)zc->zc_cookie;
	boolean_t hardforce = (boolean_t)zc->zc_guid;

	FUNC1(zc);
	error = FUNC0(zc->zc_name, NULL, force, hardforce);
	if (error == 0)
		FUNC2(zc->zc_name);
	return (error);
}