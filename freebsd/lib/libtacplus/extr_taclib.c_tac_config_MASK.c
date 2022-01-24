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
struct tac_handle {int /*<<< orphan*/  errmsg; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ERRSIZE ; 
 int MAXCONFLINE ; 
 char* PATH_TACPLUS_CONF ; 
 int TAC_SRVR_SINGLE_CONNECT ; 
 unsigned long TIMEOUT ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct tac_handle*,char*,char const*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (char*,char**,int,char*,int) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (char*) ; 
 char* FUNC10 (char**,char*) ; 
 void* FUNC11 (char*,char**,int) ; 
 int FUNC12 (struct tac_handle*,char*,int,char*,unsigned long,int) ; 

int
FUNC13(struct tac_handle *h, const char *path)
{
	FILE *fp;
	char buf[MAXCONFLINE];
	int linenum;
	int retval;

	if (path == NULL)
		path = PATH_TACPLUS_CONF;
	if ((fp = FUNC2(path, "r")) == NULL) {
		FUNC3(h, "Cannot open \"%s\": %s", path, FUNC8(errno));
		return -1;
	}
	retval = 0;
	linenum = 0;
	while (FUNC1(buf, sizeof buf, fp) != NULL) {
		int len;
		char *fields[4];
		int nfields;
		char msg[ERRSIZE];
		char *host, *res;
		char *port_str;
		char *secret;
		char *timeout_str;
		char *options_str;
		char *end;
		unsigned long timeout;
		int port;
		int options;

		linenum++;
		len = FUNC9(buf);
		/* We know len > 0, else fgets would have returned NULL. */
		if (buf[len - 1] != '\n') {
			if (len >= sizeof buf - 1)
				FUNC3(h, "%s:%d: line too long", path,
				    linenum);
			else
				FUNC3(h, "%s:%d: missing newline", path,
				    linenum);
			retval = -1;
			break;
		}
		buf[len - 1] = '\0';

		/* Extract the fields from the line. */
		nfields = FUNC5(buf, fields, 4, msg, sizeof msg);
		if (nfields == -1) {
			FUNC3(h, "%s:%d: %s", path, linenum, msg);
			retval = -1;
			break;
		}
		if (nfields == 0)
			continue;
		if (nfields < 2) {
			FUNC3(h, "%s:%d: missing shared secret", path,
			    linenum);
			retval = -1;
			break;
		}
		host = fields[0];
		secret = fields[1];
		timeout_str = fields[2];
		options_str = fields[3];

		/* Parse and validate the fields. */
		res = host;
		host = FUNC10(&res, ":");
		port_str = FUNC10(&res, ":");
		if (port_str != NULL) {
			port = FUNC11(port_str, &end, 10);
			if (port_str[0] == '\0' || *end != '\0') {
				FUNC3(h, "%s:%d: invalid port", path,
				    linenum);
				retval = -1;
				break;
			}
		} else
			port = 0;
		if (timeout_str != NULL) {
			timeout = FUNC11(timeout_str, &end, 10);
			if (timeout_str[0] == '\0' || *end != '\0') {
				FUNC3(h, "%s:%d: invalid timeout", path,
				    linenum);
				retval = -1;
				break;
			}
		} else
			timeout = TIMEOUT;
		options = 0;
		if (options_str != NULL) {
			if (FUNC6(options_str, "single-connection") == 0)
				options |= TAC_SRVR_SINGLE_CONNECT;
			else {
				FUNC3(h, "%s:%d: invalid option \"%s\"",
				    path, linenum, options_str);
				retval = -1;
				break;
			}
		};

		if (FUNC12(h, host, port, secret, timeout,
		    options) == -1) {
			char msg[ERRSIZE];

			FUNC7(msg, h->errmsg);
			FUNC3(h, "%s:%d: %s", path, linenum, msg);
			retval = -1;
			break;
		}
	}
	/* Clear out the buffer to wipe a possible copy of a shared secret */
	FUNC4(buf, 0, sizeof buf);
	FUNC0(fp);
	return retval;
}