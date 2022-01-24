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
struct sshkey {int dummy; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int SSH_ERR_SYSTEM_ERROR ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,char*) ; 
 char* FUNC5 (int) ; 
 int FUNC6 (int,struct sshkey*) ; 
 int /*<<< orphan*/  FUNC7 (struct sshkey*,struct sshkey*) ; 
 int /*<<< orphan*/  FUNC8 (struct sshkey*) ; 
 int FUNC9 (char const*,struct sshkey**,char**) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (char**,char*,char const*) ; 

__attribute__((used)) static int
FUNC11(int agent_fd, const char *filename, int key_only, int qflag)
{
	struct sshkey *public, *cert = NULL;
	char *certpath = NULL, *comment = NULL;
	int r, ret = -1;

	if ((r = FUNC9(filename, &public,  &comment)) != 0) {
		FUNC4("Bad key file %s: %s\n", filename, FUNC5(r));
		return -1;
	}
	if ((r = FUNC6(agent_fd, public)) == 0) {
		if (!qflag) {
			FUNC2(stderr, "Identity removed: %s (%s)\n",
			    filename, comment);
		}
		ret = 0;
	} else
		FUNC2(stderr, "Could not remove identity \"%s\": %s\n",
		    filename, FUNC5(r));

	if (key_only)
		goto out;

	/* Now try to delete the corresponding certificate too */
	FUNC3(comment);
	comment = NULL;
	FUNC10(&certpath, "%s-cert.pub", filename);
	if ((r = FUNC9(certpath, &cert, &comment)) != 0) {
		if (r != SSH_ERR_SYSTEM_ERROR || errno != ENOENT)
			FUNC0("Failed to load certificate \"%s\": %s",
			    certpath, FUNC5(r));
		goto out;
	}

	if (!FUNC7(cert, public))
		FUNC1("Certificate %s does not match private key %s",
		    certpath, filename);

	if ((r = FUNC6(agent_fd, cert)) == 0) {
		if (!qflag) {
			FUNC2(stderr, "Identity removed: %s (%s)\n",
			    certpath, comment);
		}
		ret = 0;
	} else
		FUNC2(stderr, "Could not remove identity \"%s\": %s\n",
		    certpath, FUNC5(r));

 out:
	FUNC8(cert);
	FUNC8(public);
	FUNC3(certpath);
	FUNC3(comment);

	return ret;
}