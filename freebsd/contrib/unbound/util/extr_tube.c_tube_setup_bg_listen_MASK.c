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
typedef  int /*<<< orphan*/  tube_callback_type ;
struct tube {int /*<<< orphan*/  sr; int /*<<< orphan*/  listen_com; void* listen_arg; int /*<<< orphan*/ * listen_cb; } ;
struct comm_base {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comm_base*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tube*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  tube_handle_listen ; 

int FUNC2(struct tube* tube, struct comm_base* base,
        tube_callback_type* cb, void* arg)
{
	tube->listen_cb = cb;
	tube->listen_arg = arg;
	if(!(tube->listen_com = FUNC0(base, tube->sr, 
		0, tube_handle_listen, tube))) {
		int err = errno;
		FUNC1("tube_setup_bg_l: commpoint creation failed");
		errno = err;
		return 0;
	}
	return 1;
}