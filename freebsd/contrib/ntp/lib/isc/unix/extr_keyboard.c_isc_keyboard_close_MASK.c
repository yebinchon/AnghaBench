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
typedef  int /*<<< orphan*/  isc_result_t ;
struct TYPE_3__ {scalar_t__ result; int fd; int /*<<< orphan*/  saved_mode; } ;
typedef  TYPE_1__ isc_keyboard_t ;

/* Variables and functions */
 scalar_t__ ISC_R_CANCELED ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCSAFLUSH ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

isc_result_t
FUNC4(isc_keyboard_t *keyboard, unsigned int sleeptime) {
	FUNC0(keyboard != NULL);

	if (sleeptime > 0 && keyboard->result != ISC_R_CANCELED)
		(void)FUNC2(sleeptime);

	(void)FUNC3(keyboard->fd, TCSAFLUSH, &keyboard->saved_mode);
	(void)FUNC1(keyboard->fd);

	keyboard->fd = -1;

	return (ISC_R_SUCCESS);
}