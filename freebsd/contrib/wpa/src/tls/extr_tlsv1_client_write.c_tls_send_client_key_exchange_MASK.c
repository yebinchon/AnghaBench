#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct tlsv1_client {int /*<<< orphan*/  state; TYPE_1__* cred; scalar_t__ certificate_requested; } ;
struct TYPE_2__ {scalar_t__ key; } ;

/* Variables and functions */
 int /*<<< orphan*/  SERVER_CHANGE_CIPHER_SPEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (struct tlsv1_client*) ; 
 scalar_t__ FUNC3 (struct tlsv1_client*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct tlsv1_client*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct tlsv1_client*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct tlsv1_client*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct tlsv1_client*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u8 * FUNC8(struct tlsv1_client *conn,
					 size_t *out_len)
{
	u8 *msg, *end, *pos;
	size_t msglen;

	*out_len = 0;

	msglen = 2000;
	if (conn->certificate_requested)
		msglen += FUNC2(conn);

	msg = FUNC1(msglen);
	if (msg == NULL)
		return NULL;

	pos = msg;
	end = msg + msglen;

	if (conn->certificate_requested) {
		if (FUNC3(conn, &pos, end) < 0) {
			FUNC0(msg);
			return NULL;
		}
	}

	if (FUNC7(conn, &pos, end) < 0 ||
	    (conn->certificate_requested && conn->cred && conn->cred->key &&
	     FUNC4(conn, &pos, end) < 0) ||
	    FUNC5(conn, &pos, end) < 0 ||
	    FUNC6(conn, &pos, end) < 0) {
		FUNC0(msg);
		return NULL;
	}

	*out_len = pos - msg;

	conn->state = SERVER_CHANGE_CIPHER_SPEC;

	return msg;
}