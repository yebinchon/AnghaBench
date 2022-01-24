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
struct stat {int dummy; } ;
struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;
struct ssh_krl {int dummy; } ;
struct passwd {int /*<<< orphan*/  pw_uid; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * ca_key_path ; 
 scalar_t__ cert_serial ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * identity_comment ; 
 char* identity_file ; 
 int /*<<< orphan*/  FUNC4 (char*,struct ssh_krl**) ; 
 int FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct ssh_krl*) ; 
 struct ssh_krl* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct ssh_krl*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ssh_krl*,scalar_t__) ; 
 scalar_t__ FUNC11 (struct ssh_krl*,struct sshbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sshbuf*) ; 
 scalar_t__ FUNC13 (struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC14 (struct sshbuf*) ; 
 struct sshbuf* FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct sshkey*) ; 
 int FUNC17 (char*,struct sshkey**,int /*<<< orphan*/ *) ; 
 int FUNC18 (char*,struct stat*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 char* FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct passwd*,char*,int,struct sshkey*,struct ssh_krl*) ; 
 int /*<<< orphan*/  vwrite ; 

__attribute__((used)) static void
FUNC23(struct passwd *pw, int updating, int argc, char **argv)
{
	struct ssh_krl *krl;
	struct stat sb;
	struct sshkey *ca = NULL;
	int fd, i, r, wild_ca = 0;
	char *tmp;
	struct sshbuf *kbuf;

	if (*identity_file == '\0')
		FUNC2("KRL generation requires an output file");
	if (FUNC18(identity_file, &sb) == -1) {
		if (errno != ENOENT)
			FUNC2("Cannot access KRL \"%s\": %s",
			    identity_file, FUNC20(errno));
		if (updating)
			FUNC2("KRL \"%s\" does not exist", identity_file);
	}
	if (ca_key_path != NULL) {
		if (FUNC19(ca_key_path, "none") == 0)
			wild_ca = 1;
		else {
			tmp = FUNC21(ca_key_path, pw->pw_uid);
			if ((r = FUNC17(tmp, &ca, NULL)) != 0)
				FUNC2("Cannot load CA public key %s: %s",
				    tmp, FUNC6(r));
			FUNC3(tmp);
		}
	}

	if (updating)
		FUNC4(identity_file, &krl);
	else if ((krl = FUNC8()) == NULL)
		FUNC2("couldn't create KRL");

	if (cert_serial != 0)
		FUNC10(krl, cert_serial);
	if (identity_comment != NULL)
		FUNC9(krl, identity_comment);

	for (i = 0; i < argc; i++)
		FUNC22(pw, argv[i], wild_ca, ca, krl);

	if ((kbuf = FUNC15()) == NULL)
		FUNC2("sshbuf_new failed");
	if (FUNC11(krl, kbuf, NULL, 0) != 0)
		FUNC2("Couldn't generate KRL");
	if ((fd = FUNC5(identity_file, O_WRONLY|O_CREAT|O_TRUNC, 0644)) == -1)
		FUNC2("open %s: %s", identity_file, FUNC20(errno));
	if (FUNC0(vwrite, fd, FUNC14(kbuf), FUNC13(kbuf)) !=
	    FUNC13(kbuf))
		FUNC2("write %s: %s", identity_file, FUNC20(errno));
	FUNC1(fd);
	FUNC12(kbuf);
	FUNC7(krl);
	FUNC16(ca);
}