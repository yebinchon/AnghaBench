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
struct TYPE_4__ {scalar_t__ print_on_err; scalar_t__ error; } ;
typedef  TYPE_1__ libbe_handle_t ;
typedef  scalar_t__ be_error_t ;

/* Variables and functions */
 scalar_t__ BE_ERR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC2(libbe_handle_t *lbh, be_error_t err)
{

	lbh->error = err;
	if (lbh->print_on_err && (err != BE_ERR_SUCCESS))
		FUNC0(stderr, "%s\n", FUNC1(lbh));

	return (err);
}