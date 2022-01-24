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
struct sshbuf {int dummy; } ;
struct ssh {int /*<<< orphan*/  compat; TYPE_1__* kex; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {scalar_t__ server; } ;

/* Variables and functions */
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INVALID_FORMAT ; 
 int SSH_ERR_NO_PROTOCOL_VERSION ; 
 int SSH_ERR_PROTOCOL_MISMATCH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (char*,char*,int*,int*,char*) ; 
 struct sshbuf* FUNC4 (struct ssh*) ; 
 int /*<<< orphan*/  FUNC5 (struct ssh*) ; 
 int FUNC6 (struct sshbuf*,size_t) ; 
 size_t FUNC7 (struct sshbuf*) ; 
 scalar_t__ FUNC8 (struct sshbuf*) ; 
 int FUNC9 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 scalar_t__ FUNC12 (char*,char*,int) ; 

int
FUNC13(struct ssh *ssh, char **bannerp)
{
	struct sshbuf *input;
	const char *s;
	char buf[256], remote_version[256];	/* must be same size! */
	const char *mismatch = "Protocol mismatch.\r\n";
	int r, remote_major, remote_minor;
	size_t i, n, j, len;

	*bannerp = NULL;
	input = FUNC4(ssh);
	len = FUNC7(input);
	s = (const char *)FUNC8(input);
	for (j = n = 0;;) {
		for (i = 0; i < sizeof(buf) - 1; i++) {
			if (j >= len)
				return (0);
			buf[i] = s[j++];
			if (buf[i] == '\r') {
				buf[i] = '\n';
				buf[i + 1] = 0;
				continue;		/**XXX wait for \n */
			}
			if (buf[i] == '\n') {
				buf[i + 1] = 0;
				break;
			}
		}
		buf[sizeof(buf) - 1] = 0;
		if (FUNC12(buf, "SSH-", 4) == 0)
			break;
		FUNC2("ssh_exchange_identification: %s", buf);
		if (ssh->kex->server || ++n > 65536) {
			if ((r = FUNC9(FUNC5(ssh),
			   mismatch, FUNC11(mismatch))) != 0)
				return r;
			return SSH_ERR_NO_PROTOCOL_VERSION;
		}
	}
	if ((r = FUNC6(input, j)) != 0)
		return r;

	/*
	 * Check that the versions match.  In future this might accept
	 * several versions and set appropriate flags to handle them.
	 */
	if (FUNC3(buf, "SSH-%d.%d-%[^\n]\n",
	    &remote_major, &remote_minor, remote_version) != 3)
		return SSH_ERR_INVALID_FORMAT;
	FUNC2("Remote protocol version %d.%d, remote software version %.100s",
	    remote_major, remote_minor, remote_version);

	ssh->compat = FUNC1(remote_version);
	if  (remote_major == 1 && remote_minor == 99) {
		remote_major = 2;
		remote_minor = 0;
	}
	if (remote_major != 2)
		return SSH_ERR_PROTOCOL_MISMATCH;
	FUNC0(buf);
	FUNC2("Remote version string %.100s", buf);
	if ((*bannerp = FUNC10(buf)) == NULL)
		return SSH_ERR_ALLOC_FAIL;
	return 0;
}