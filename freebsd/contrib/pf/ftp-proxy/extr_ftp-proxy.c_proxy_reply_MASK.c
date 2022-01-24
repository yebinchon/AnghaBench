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
typedef  int u_int16_t ;
typedef  int u_int ;
struct sockaddr {int /*<<< orphan*/  sa_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
#define  CMD_EPRT 131 
#define  CMD_EPSV 130 
#define  CMD_PASV 129 
#define  CMD_PORT 128 
 int /*<<< orphan*/  LOG_ERR ; 
 char* linebuf ; 
 int linelen ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (char*,int,char*,...) ; 
 char* FUNC2 (struct sockaddr*) ; 

void
FUNC3(int cmd, struct sockaddr *sa, u_int16_t port)
{
	u_int i;
	int r = 0;

	switch (cmd) {
	case CMD_PORT:
		r = FUNC1(linebuf, sizeof linebuf,
		    "PORT %s,%u,%u\r\n", FUNC2(sa), port / 256,
		    port % 256);
		break;
	case CMD_PASV:
		r = FUNC1(linebuf, sizeof linebuf,
		    "227 Entering Passive Mode (%s,%u,%u)\r\n", FUNC2(sa),
		        port / 256, port % 256);
		break;
	case CMD_EPRT:
		if (sa->sa_family == AF_INET)
			r = FUNC1(linebuf, sizeof linebuf,
			    "EPRT |1|%s|%u|\r\n", FUNC2(sa), port);
		else if (sa->sa_family == AF_INET6)
			r = FUNC1(linebuf, sizeof linebuf,
			    "EPRT |2|%s|%u|\r\n", FUNC2(sa), port);
		break;
	case CMD_EPSV:
		r = FUNC1(linebuf, sizeof linebuf,
		    "229 Entering Extended Passive Mode (|||%u|)\r\n", port);
		break;
	}

	if (r < 0 || ((u_int)r) >= sizeof linebuf) {
		FUNC0(LOG_ERR, "proxy_reply failed: %d", r);
		linebuf[0] = '\0';
		linelen = 0;
		return;
	}
	linelen = (size_t)r;

	if (cmd == CMD_PORT || cmd == CMD_PASV) {
		/* Replace dots in IP address with commas. */
		for (i = 0; i < linelen; i++)
			if (linebuf[i] == '.')
				linebuf[i] = ',';
	}
}