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
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_2__ {int version; int arglen; int flags; int token; int cmd; int /*<<< orphan*/  cmdstr; int /*<<< orphan*/  typecookie; } ;
struct ng_mesg {int data; TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int ARGS_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  NGM_BINARY2ASCII ; 
 int /*<<< orphan*/  NGM_GENERIC_COOKIE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,struct ng_mesg* const,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ng_mesg* const,int) ; 
 scalar_t__ RECURSIVE_DEBUG_ADJUST ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int _gNgDebugLevel ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC7 (struct ng_mesg* const,struct ng_mesg const*,int) ; 
 int /*<<< orphan*/ * FUNC8 (char const*,char) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

void
FUNC10(const struct ng_mesg *msg, const char *path)
{
	u_char buf[2 * sizeof(struct ng_mesg) + ARGS_BUFSIZE];
	struct ng_mesg *const req = (struct ng_mesg *)buf;
	struct ng_mesg *const bin = (struct ng_mesg *)req->data;
	int arglen, csock = -1;

	/* Display header stuff */
	FUNC0("NG_MESG :");
	FUNC0("  vers   %d", msg->header.version);
	FUNC0("  arglen %u", msg->header.arglen);
	FUNC0("  flags  %x", msg->header.flags);
	FUNC0("  token  %u", msg->header.token);
	FUNC0("  cookie %s (%u)",
	    FUNC1(msg->header.typecookie), msg->header.typecookie);

	/* At lower debugging levels, skip ASCII translation */
	if (_gNgDebugLevel <= 2)
		goto fail2;

	/* If path is not absolute, don't bother trying to use relative
	   address on a different socket for the ASCII translation */
	if (FUNC8(path, ':') == NULL)
		goto fail2;

	/* Get a temporary socket */
	if (FUNC2(NULL, &csock, NULL) < 0)
		goto fail;

	/* Copy binary message into request message payload */
	arglen = msg->header.arglen;
	if (arglen > ARGS_BUFSIZE)
		arglen = ARGS_BUFSIZE;
	FUNC7(bin, msg, sizeof(*msg) + arglen);
	bin->header.arglen = arglen;

	/* Lower debugging to avoid infinite recursion */
	_gNgDebugLevel -= RECURSIVE_DEBUG_ADJUST;

	/* Ask the node to translate the binary message to ASCII for us */
	if (FUNC4(csock, path, NGM_GENERIC_COOKIE,
	    NGM_BINARY2ASCII, bin, sizeof(*bin) + bin->header.arglen) < 0) {
		_gNgDebugLevel += RECURSIVE_DEBUG_ADJUST;
		goto fail;
	}
	if (FUNC3(csock, req, sizeof(buf), NULL) < 0) {
		_gNgDebugLevel += RECURSIVE_DEBUG_ADJUST;
		goto fail;
	}

	/* Restore debugging level */
	_gNgDebugLevel += RECURSIVE_DEBUG_ADJUST;

	/* Display command string and arguments */
	FUNC0("  cmd    %s (%d)", bin->header.cmdstr, bin->header.cmd);
	FUNC0("  args   %s", bin->data);
	goto done;

fail:
	/* Just display binary version */
	FUNC0("  [error decoding message: %s]", FUNC9(errno));
fail2:
	FUNC0("  cmd    %d", msg->header.cmd);
	FUNC0("  args (%d bytes)", msg->header.arglen);
	FUNC5((u_char *)msg->data, msg->header.arglen);

done:
	if (csock != -1)
		(void)FUNC6(csock);
}