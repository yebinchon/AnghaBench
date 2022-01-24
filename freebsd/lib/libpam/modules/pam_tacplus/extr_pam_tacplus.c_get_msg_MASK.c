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
struct tac_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_CRIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tac_handle*) ; 
 char* FUNC2 (struct tac_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct tac_handle*) ; 

__attribute__((used)) static char *
FUNC4(struct tac_handle *tach)
{
	char *msg;

	msg = FUNC2(tach);
	if (msg == NULL) {
		FUNC0(LOG_CRIT, "tac_get_msg: %s", FUNC3(tach));
		FUNC1(tach);
		return NULL;
	}
	return msg;
}