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
struct sshbuf {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 size_t MAX_AGENT_REPLY_LEN ; 
 size_t FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int SSH_ERR_AGENT_COMMUNICATION ; 
 int SSH_ERR_INVALID_FORMAT ; 
 size_t FUNC2 (int /*<<< orphan*/ ,int,char*,size_t) ; 
 int /*<<< orphan*/  read ; 
 size_t FUNC3 (struct sshbuf*) ; 
 char* FUNC4 (struct sshbuf*) ; 
 int FUNC5 (struct sshbuf*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct sshbuf*) ; 
 int /*<<< orphan*/  vwrite ; 

__attribute__((used)) static int
FUNC7(int sock, struct sshbuf *request, struct sshbuf *reply)
{
	int r;
	size_t l, len;
	char buf[1024];

	/* Get the length of the message, and format it in the buffer. */
	len = FUNC3(request);
	FUNC1(buf, len);

	/* Send the length and then the packet to the agent. */
	if (FUNC2(vwrite, sock, buf, 4) != 4 ||
	    FUNC2(vwrite, sock, FUNC4(request),
	    FUNC3(request)) != FUNC3(request))
		return SSH_ERR_AGENT_COMMUNICATION;
	/*
	 * Wait for response from the agent.  First read the length of the
	 * response packet.
	 */
	if (FUNC2(read, sock, buf, 4) != 4)
	    return SSH_ERR_AGENT_COMMUNICATION;

	/* Extract the length, and check it for sanity. */
	len = FUNC0(buf);
	if (len > MAX_AGENT_REPLY_LEN)
		return SSH_ERR_INVALID_FORMAT;

	/* Read the rest of the response in to the buffer. */
	FUNC6(reply);
	while (len > 0) {
		l = len;
		if (l > sizeof(buf))
			l = sizeof(buf);
		if (FUNC2(read, sock, buf, l) != l)
			return SSH_ERR_AGENT_COMMUNICATION;
		if ((r = FUNC5(reply, buf, l)) != 0)
			return r;
		len -= l;
	}
	return 0;
}