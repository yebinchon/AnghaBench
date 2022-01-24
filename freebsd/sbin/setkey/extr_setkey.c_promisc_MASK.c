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
typedef  int u_char ;
struct sadb_msg {scalar_t__ sadb_msg_type; int sadb_msg_satype; int /*<<< orphan*/  sadb_msg_len; int /*<<< orphan*/  sadb_msg_pid; scalar_t__ sadb_msg_seq; scalar_t__ sadb_msg_reserved; scalar_t__ sadb_msg_errno; int /*<<< orphan*/  sadb_msg_version; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_PEEK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PF_KEY_V2 ; 
 scalar_t__ SADB_X_PROMISC ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ f_hexdump ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct sadb_msg*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 (int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct sadb_msg*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  so ; 
 int /*<<< orphan*/  stdout ; 

void
FUNC10()
{
	struct sadb_msg msg;
	u_char rbuf[1024 * 32];	/* XXX: Enough ? Should I do MSG_PEEK ? */
	ssize_t l;

	msg.sadb_msg_version = PF_KEY_V2;
	msg.sadb_msg_type = SADB_X_PROMISC;
	msg.sadb_msg_errno = 0;
	msg.sadb_msg_satype = 1;
	msg.sadb_msg_len = FUNC0(sizeof(msg));
	msg.sadb_msg_reserved = 0;
	msg.sadb_msg_seq = 0;
	msg.sadb_msg_pid = FUNC4();

	if ((l = FUNC9(so, &msg, sizeof(msg), 0)) < 0) {
		FUNC2(1, "send");
		/*NOTREACHED*/
	}

	while (1) {
		struct sadb_msg *base;

		if ((l = FUNC8(so, rbuf, sizeof(*base), MSG_PEEK)) < 0) {
			FUNC2(1, "recv");
			/*NOTREACHED*/
		}

		if (l != sizeof(*base))
			continue;

		base = (struct sadb_msg *)rbuf;
		if ((l = FUNC8(so, rbuf, FUNC1(base->sadb_msg_len),
				0)) < 0) {
			FUNC2(1, "recv");
			/*NOTREACHED*/
		}
		FUNC6();
		if (f_hexdump) {
			int i;
			for (i = 0; i < l; i++) {
				if (i % 16 == 0)
					FUNC7("%08x: ", i);
				FUNC7("%02x ", rbuf[i] & 0xff);
				if (i % 16 == 15)
					FUNC7("\n");
			}
			if (l % 16)
				FUNC7("\n");
		}
		/* adjust base pointer for promisc mode */
		if (base->sadb_msg_type == SADB_X_PROMISC) {
			if ((ssize_t)sizeof(*base) < l)
				base++;
			else
				base = NULL;
		}
		if (base) {
			FUNC5(base);
			FUNC7("\n");
			FUNC3(stdout);
		}
	}
}