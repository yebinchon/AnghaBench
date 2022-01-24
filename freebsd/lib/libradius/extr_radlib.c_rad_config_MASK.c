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
struct rad_handle {int /*<<< orphan*/  errmsg; int /*<<< orphan*/  type; } ;
struct in_addr {scalar_t__ s_addr; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 unsigned long DEAD_TIME ; 
 int ERRSIZE ; 
 scalar_t__ INADDR_ANY ; 
 scalar_t__ INADDR_NONE ; 
 int MAXCONFLINE ; 
 unsigned long MAXTRIES ; 
 int MAX_FIELDS ; 
 char* PATH_RADIUS_CONF ; 
 int /*<<< orphan*/  RADIUS_AUTH ; 
 unsigned long TIMEOUT ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct rad_handle*,char*,char const*,int,...) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct rad_handle*,char*,int,char*,unsigned long,unsigned long,unsigned long,struct in_addr*) ; 
 int FUNC7 (char*,char**,int,char*,int) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (char*) ; 
 char* FUNC12 (char**,char*) ; 
 void* FUNC13 (char*,char**,int) ; 

int
FUNC14(struct rad_handle *h, const char *path)
{
	FILE *fp;
	char buf[MAXCONFLINE];
	int linenum;
	int retval;

	if (path == NULL)
		path = PATH_RADIUS_CONF;
	if ((fp = FUNC2(path, "r")) == NULL) {
		FUNC3(h, "Cannot open \"%s\": %s", path, FUNC10(errno));
		return -1;
	}
	retval = 0;
	linenum = 0;
	while (FUNC1(buf, sizeof buf, fp) != NULL) {
		int len;
		char *fields[MAX_FIELDS];
		int nfields;
		char msg[ERRSIZE];
		char *type;
		char *host, *res;
		char *port_str;
		char *secret;
		char *timeout_str;
		char *maxtries_str;
		char *dead_time_str;
		char *bindto_str;
		char *end;
		char *wanttype;
		unsigned long timeout;
		unsigned long maxtries;
		unsigned long dead_time;
		int port;
		struct in_addr bindto;
		int i;

		linenum++;
		len = FUNC11(buf);
		/* We know len > 0, else fgets would have returned NULL. */
		if (buf[len - 1] != '\n') {
			if (len == sizeof buf - 1)
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
		nfields = FUNC7(buf, fields, MAX_FIELDS, msg, sizeof msg);
		if (nfields == -1) {
			FUNC3(h, "%s:%d: %s", path, linenum, msg);
			retval = -1;
			break;
		}
		if (nfields == 0)
			continue;
		/*
		 * The first field should contain "auth" or "acct" for
		 * authentication or accounting, respectively.  But older
		 * versions of the file didn't have that field.  Default
		 * it to "auth" for backward compatibility.
		 */
		if (FUNC8(fields[0], "auth") != 0 &&
		    FUNC8(fields[0], "acct") != 0) {
			if (nfields >= MAX_FIELDS) {
				FUNC3(h, "%s:%d: invalid service type", path,
				    linenum);
				retval = -1;
				break;
			}
			nfields++;
			for (i = nfields;  --i > 0;  )
				fields[i] = fields[i - 1];
			fields[0] = "auth";
		}
		if (nfields < 3) {
			FUNC3(h, "%s:%d: missing shared secret", path,
			    linenum);
			retval = -1;
			break;
		}
		type = fields[0];
		host = fields[1];
		secret = fields[2];
		timeout_str = fields[3];
		maxtries_str = fields[4];
		dead_time_str = fields[5];
		bindto_str = fields[6];

		/* Ignore the line if it is for the wrong service type. */
		wanttype = h->type == RADIUS_AUTH ? "auth" : "acct";
		if (FUNC8(type, wanttype) != 0)
			continue;

		/* Parse and validate the fields. */
		res = host;
		host = FUNC12(&res, ":");
		port_str = FUNC12(&res, ":");
		if (port_str != NULL) {
			port = FUNC13(port_str, &end, 10);
			if (*end != '\0') {
				FUNC3(h, "%s:%d: invalid port", path,
				    linenum);
				retval = -1;
				break;
			}
		} else
			port = 0;
		if (timeout_str != NULL) {
			timeout = FUNC13(timeout_str, &end, 10);
			if (*end != '\0') {
				FUNC3(h, "%s:%d: invalid timeout", path,
				    linenum);
				retval = -1;
				break;
			}
		} else
			timeout = TIMEOUT;
		if (maxtries_str != NULL) {
			maxtries = FUNC13(maxtries_str, &end, 10);
			if (*end != '\0') {
				FUNC3(h, "%s:%d: invalid maxtries", path,
				    linenum);
				retval = -1;
				break;
			}
		} else
			maxtries = MAXTRIES;

		if (dead_time_str != NULL) {
			dead_time = FUNC13(dead_time_str, &end, 10);
			if (*end != '\0') {
				FUNC3(h, "%s:%d: invalid dead_time", path,
				    linenum);
				retval = -1;
				break;
			}
		} else
		    	dead_time = DEAD_TIME;

		if (bindto_str != NULL) {
		    	bindto.s_addr = FUNC4(bindto_str);
			if (bindto.s_addr == INADDR_NONE) {
				FUNC3(h, "%s:%d: invalid bindto", path,
				    linenum);
				retval = -1;
				break;
			}
		} else
		    	bindto.s_addr = INADDR_ANY;

		if (FUNC6(h, host, port, secret, timeout, maxtries,
			    dead_time, &bindto) == -1) {
			FUNC9(msg, h->errmsg);
			FUNC3(h, "%s:%d: %s", path, linenum, msg);
			retval = -1;
			break;
		}
	}
	/* Clear out the buffer to wipe a possible copy of a shared secret */
	FUNC5(buf, 0, sizeof buf);
	FUNC0(fp);
	return retval;
}