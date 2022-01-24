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
struct tlsv1_server {int /*<<< orphan*/  verify; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_HELLO ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tlsv1_server*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

int FUNC3(struct tlsv1_server *conn)
{
	conn->state = CLIENT_HELLO;

	if (FUNC0(&conn->verify) < 0) {
		FUNC2(MSG_DEBUG, "TLSv1: Failed to re-initialize verify "
			   "hash");
		return -1;
	}

	FUNC1(conn);

	return 0;
}