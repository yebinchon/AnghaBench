#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
typedef  char u_char ;
typedef  int /*<<< orphan*/  token ;
struct TYPE_6__ {scalar_t__ ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_TOKEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ RESP_CODE_SECOND_TOKEN ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char const*,scalar_t__,scalar_t__,char*,int) ; 
 scalar_t__ FUNC3 (char) ; 
 scalar_t__ FUNC4 (TYPE_1__*,char const*,char*,char const*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 

void
FUNC6(netdissect_options *ndo, const u_char *pptr, u_int len,
    const char *protoname, const char **cmds, u_int flags)
{
	u_int idx, eol;
	u_char token[MAX_TOKEN+1];
	const char *cmd;
	int is_reqresp = 0;
	const char *pnp;

	if (cmds != NULL) {
		/*
		 * This protocol has more than just request and
		 * response lines; see whether this looks like a
		 * request or response.
		 */
		idx = FUNC2(ndo, pptr, 0, len, token, sizeof(token));
		if (idx != 0) {
			/* Is this a valid request name? */
			while ((cmd = *cmds++) != NULL) {
				if (FUNC1((const char *)token, cmd) == 0) {
					/* Yes. */
					is_reqresp = 1;
					break;
				}
			}

			/*
			 * No - is this a valid response code (3 digits)?
			 *
			 * Is this token the response code, or is the next
			 * token the response code?
			 */
			if (flags & RESP_CODE_SECOND_TOKEN) {
				/*
				 * Next token - get it.
				 */
				idx = FUNC2(ndo, pptr, idx, len, token,
				    sizeof(token));
			}
			if (idx != 0) {
				if (FUNC3(token[0]) && FUNC3(token[1]) &&
				    FUNC3(token[2]) && token[3] == '\0') {
					/* Yes. */
					is_reqresp = 1;
				}
			}
		}
	} else {
		/*
		 * This protocol has only request and response lines
		 * (e.g., FTP, where all the data goes over a
		 * different connection); assume the payload is
		 * a request or response.
		 */
		is_reqresp = 1;
	}

	/* Capitalize the protocol name */
	for (pnp = protoname; *pnp != '\0'; pnp++)
		FUNC0((ndo, "%c", FUNC5((u_char)*pnp)));

	if (is_reqresp) {
		/*
		 * In non-verbose mode, just print the protocol, followed
		 * by the first line as the request or response info.
		 *
		 * In verbose mode, print lines as text until we run out
		 * of characters or see something that's not a
		 * printable-ASCII line.
		 */
		if (ndo->ndo_vflag) {
			/*
			 * We're going to print all the text lines in the
			 * request or response; just print the length
			 * on the first line of the output.
			 */
			FUNC0((ndo, ", length: %u", len));
			for (idx = 0;
			    idx < len && (eol = FUNC4(ndo, protoname, "\n\t", pptr, idx, len)) != 0;
			    idx = eol)
				;
		} else {
			/*
			 * Just print the first text line.
			 */
			FUNC4(ndo, protoname, ": ", pptr, 0, len);
		}
	}
}