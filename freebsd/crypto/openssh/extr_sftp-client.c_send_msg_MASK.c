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
typedef  int /*<<< orphan*/  u_char ;
struct sshbuf {int dummy; } ;
struct sftp_conn {scalar_t__ limit_kbps; int /*<<< orphan*/  bwlimit_out; int /*<<< orphan*/  fd_out; } ;
struct iovec {int iov_len; int /*<<< orphan*/ * iov_base; } ;
typedef  int /*<<< orphan*/  mlen ;

/* Variables and functions */
 int SFTP_MAX_MSG_LENGTH ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iovec*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * sftpio ; 
 int FUNC3 (struct sshbuf*) ; 
 scalar_t__ FUNC4 (struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct sshbuf*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  writev ; 

__attribute__((used)) static void
FUNC7(struct sftp_conn *conn, struct sshbuf *m)
{
	u_char mlen[4];
	struct iovec iov[2];

	if (FUNC3(m) > SFTP_MAX_MSG_LENGTH)
		FUNC1("Outbound message too long %zu", FUNC3(m));

	/* Send length first */
	FUNC2(mlen, FUNC3(m));
	iov[0].iov_base = mlen;
	iov[0].iov_len = sizeof(mlen);
	iov[1].iov_base = (u_char *)FUNC4(m);
	iov[1].iov_len = FUNC3(m);

	if (FUNC0(writev, conn->fd_out, iov, 2,
	    conn->limit_kbps > 0 ? sftpio : NULL, &conn->bwlimit_out) !=
	    FUNC3(m) + sizeof(mlen))
		FUNC1("Couldn't send packet: %s", FUNC6(errno));

	FUNC5(m);
}