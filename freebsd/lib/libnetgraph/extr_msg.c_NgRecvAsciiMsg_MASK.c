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
struct TYPE_2__ {int arglen; } ;
struct ng_mesg {TYPE_1__ header; scalar_t__ data; } ;

/* Variables and functions */
 int ERANGE ; 
 int /*<<< orphan*/  NGM_BINARY2ASCII ; 
 int /*<<< orphan*/  NGM_GENERIC_COOKIE ; 
 scalar_t__ FUNC0 (int,struct ng_mesg*,int,char*) ; 
 scalar_t__ FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ng_mesg*,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ng_mesg*,struct ng_mesg*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int) ; 

int
FUNC6(int cs, struct ng_mesg *reply, size_t replen, char *path)
{
	struct ng_mesg *msg, *ascii;
	int bufSize, errnosv;
	u_char *buf;

	/* Allocate buffer */
	bufSize = 2 * sizeof(*reply) + replen;
	if ((buf = FUNC3(bufSize)) == NULL)
		return (-1);
	msg = (struct ng_mesg *)buf;
	ascii = (struct ng_mesg *)msg->data;

	/* Get binary message */
	if (FUNC0(cs, msg, bufSize, path) < 0)
		goto fail;
	FUNC4(reply, msg, sizeof(*msg));

	/* Ask originating node to convert the arguments to ASCII */
	if (FUNC1(cs, path, NGM_GENERIC_COOKIE,
	    NGM_BINARY2ASCII, msg, sizeof(*msg) + msg->header.arglen) < 0)
		goto fail;
	if (FUNC0(cs, msg, bufSize, NULL) < 0)
		goto fail;

	/* Copy result to client buffer */
	if (sizeof(*ascii) + ascii->header.arglen > replen) {
		errno = ERANGE;
fail:
		errnosv = errno;
		FUNC2(buf);
		errno = errnosv;
		return (-1);
	}
	FUNC5(reply->data, ascii->data, ascii->header.arglen);

	/* Done */
	FUNC2(buf);
	return (0);
}