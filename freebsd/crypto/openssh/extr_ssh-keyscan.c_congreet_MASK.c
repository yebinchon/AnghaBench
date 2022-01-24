#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* c_name; TYPE_2__* c_ssh; } ;
typedef  TYPE_1__ con ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_9__ {scalar_t__ compat; } ;

/* Variables and functions */
#define  ECONNREFUSED 129 
#define  EPIPE 128 
 int PROTOCOL_MAJOR_2 ; 
 int PROTOCOL_MINOR_2 ; 
 size_t FUNC0 (int /*<<< orphan*/ ,int,char*,int) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 TYPE_1__* fdcon ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char,int) ; 
 scalar_t__ print_sshfp ; 
 int /*<<< orphan*/  read ; 
 int FUNC11 (char*,int,char*,int,int) ; 
 int FUNC12 (char*,char*,int*,int*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 TYPE_2__* FUNC14 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int ssh_port ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC17 (int) ; 
 scalar_t__ FUNC18 (char*,char*,int) ; 
 int /*<<< orphan*/  timeout ; 
 int /*<<< orphan*/  vwrite ; 

__attribute__((used)) static void
FUNC19(int s)
{
	int n = 0, remote_major = 0, remote_minor = 0;
	char buf[256], *cp;
	char remote_version[sizeof buf];
	size_t bufsiz;
	con *c = &fdcon[s];

	/* send client banner */
	n = FUNC11(buf, sizeof buf, "SSH-%d.%d-OpenSSH-keyscan\r\n",
	    PROTOCOL_MAJOR_2, PROTOCOL_MINOR_2);
	if (n < 0 || (size_t)n >= sizeof(buf)) {
		FUNC6("snprintf: buffer too small");
		FUNC3(s);
		return;
	}
	if (FUNC0(vwrite, s, buf, n) != (size_t)n) {
		FUNC6("write (%s): %s", c->c_name, FUNC17(errno));
		FUNC3(s);
		return;
	}

	for (;;) {
		FUNC10(buf, '\0', sizeof(buf));
		bufsiz = sizeof(buf);
		cp = buf;
		while (bufsiz-- &&
		    (n = FUNC0(read, s, cp, 1)) == 1 && *cp != '\n') {
			if (*cp == '\r')
				*cp = '\n';
			cp++;
		}
		if (n != 1 || FUNC18(buf, "SSH-", 4) == 0)
			break;
	}
	if (n == 0) {
		switch (errno) {
		case EPIPE:
			FUNC6("%s: Connection closed by remote host", c->c_name);
			break;
		case ECONNREFUSED:
			break;
		default:
			FUNC6("read (%s): %s", c->c_name, FUNC17(errno));
			break;
		}
		FUNC4(s);
		return;
	}
	if (*cp != '\n' && *cp != '\r') {
		FUNC6("%s: bad greeting", c->c_name);
		FUNC3(s);
		return;
	}
	*cp = '\0';
	if ((c->c_ssh = FUNC14(NULL, s, s)) == NULL)
		FUNC7("ssh_packet_set_connection failed");
	FUNC15(c->c_ssh, timeout, 1);
	FUNC16(c->c_ssh, c);	/* back link */
	if (FUNC12(buf, "SSH-%d.%d-%[^\n]\n",
	    &remote_major, &remote_minor, remote_version) == 3)
		c->c_ssh->compat = FUNC2(remote_version);
	else
		c->c_ssh->compat = 0;
	if (!FUNC13(remote_major, remote_minor)) {
		FUNC5("%s doesn't support ssh2", c->c_name);
		FUNC3(s);
		return;
	}
	FUNC8(stderr, "%c %s:%d %s\n", print_sshfp ? ';' : '#',
	    c->c_name, ssh_port, FUNC1(buf));
	FUNC9(c);
	FUNC3(s);
}