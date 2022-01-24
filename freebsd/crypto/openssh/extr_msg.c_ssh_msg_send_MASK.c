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
typedef  int u_int ;
typedef  scalar_t__ u_char ;
struct sshbuf {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int) ; 
 int FUNC4 (struct sshbuf*) ; 
 scalar_t__* FUNC5 (struct sshbuf*) ; 
 int /*<<< orphan*/  vwrite ; 

int
FUNC6(int fd, u_char type, struct sshbuf *m)
{
	u_char buf[5];
	u_int mlen = FUNC4(m);

	FUNC1("ssh_msg_send: type %u", (unsigned int)type & 0xff);

	FUNC3(buf, mlen + 1);
	buf[4] = type;		/* 1st byte of payload is mesg-type */
	if (FUNC0(vwrite, fd, buf, sizeof(buf)) != sizeof(buf)) {
		FUNC2("ssh_msg_send: write");
		return (-1);
	}
	if (FUNC0(vwrite, fd, FUNC5(m), mlen) != mlen) {
		FUNC2("ssh_msg_send: write");
		return (-1);
	}
	return (0);
}