#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct rc_state {TYPE_1__* c; } ;
struct daemon_remote {int /*<<< orphan*/  worker; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  pre ;
typedef  int /*<<< orphan*/  magic ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_8__ {int /*<<< orphan*/  fd; scalar_t__ ssl; } ;
struct TYPE_7__ {int /*<<< orphan*/  fd; } ;
typedef  TYPE_2__ RES ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ SSL_ERROR_ZERO_RETURN ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int FUNC2 (scalar_t__,char*,int) ; 
 int UNBOUND_CONTROL_VERSION ; 
 int /*<<< orphan*/  VERB_DETAIL ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (struct daemon_remote*,TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,char*,int) ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC18(struct daemon_remote* rc, struct rc_state* s, RES* res)
{
	int r;
	char pre[10];
	char magic[7];
	char buf[1024];
#ifdef USE_WINSOCK
	/* makes it possible to set the socket blocking again. */
	/* basically removes it from winsock_event ... */
	WSAEventSelect(s->c->fd, NULL, 0);
#endif
	FUNC6(s->c->fd);

	/* try to read magic UBCT[version]_space_ string */
	if(res->ssl) {
		FUNC0();
		if((r=FUNC2(res->ssl, magic, (int)sizeof(magic)-1)) <= 0) {
			if(FUNC1(res->ssl, r) == SSL_ERROR_ZERO_RETURN)
				return;
			FUNC7("could not SSL_read");
			return;
		}
	} else {
		while(1) {
			ssize_t rr = FUNC9(res->fd, magic, sizeof(magic)-1, 0);
			if(rr <= 0) {
				if(rr == 0) return;
				if(errno == EINTR || errno == EAGAIN)
					continue;
#ifndef USE_WINSOCK
				FUNC8("could not recv: %s", FUNC14(errno));
#else
				log_err("could not recv: %s", wsa_strerror(WSAGetLastError()));
#endif
				return;
			}
			r = (int)rr;
			break;
		}
	}
	magic[6] = 0;
	if( r != 6 || FUNC15(magic, "UBCT", 4) != 0) {
		FUNC16(VERB_QUERY, "control connection has bad magic string");
		/* probably wrong tool connected, ignore it completely */
		return;
	}

	/* read the command line */
	if(!FUNC12(res, buf, sizeof(buf))) {
		return;
	}
	FUNC10(pre, sizeof(pre), "UBCT%d ", UNBOUND_CONTROL_VERSION);
	if(FUNC13(magic, pre) != 0) {
		FUNC16(VERB_QUERY, "control connection had bad "
			"version %s, cmd: %s", magic, buf);
		FUNC11(res, "error version mismatch\n");
		return;
	}
	FUNC16(VERB_DETAIL, "control cmd: %s", buf);

	/* figure out what to do */
	FUNC5(rc, res, buf, rc->worker);
}