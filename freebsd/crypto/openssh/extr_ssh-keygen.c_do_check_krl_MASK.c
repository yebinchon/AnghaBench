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
struct ssh_krl {int dummy; } ;
struct passwd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* identity_file ; 
 int /*<<< orphan*/  FUNC3 (char*,struct ssh_krl**) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct ssh_krl*,struct sshkey*) ; 
 int /*<<< orphan*/  FUNC7 (struct ssh_krl*) ; 
 int /*<<< orphan*/  FUNC8 (struct sshkey*) ; 
 int FUNC9 (char*,struct sshkey**,char**) ; 

__attribute__((used)) static void
FUNC10(struct passwd *pw, int argc, char **argv)
{
	int i, r, ret = 0;
	char *comment;
	struct ssh_krl *krl;
	struct sshkey *k;

	if (*identity_file == '\0')
		FUNC1("KRL checking requires an input file");
	FUNC3(identity_file, &krl);
	for (i = 0; i < argc; i++) {
		if ((r = FUNC9(argv[i], &k, &comment)) != 0)
			FUNC1("Cannot load public key %s: %s",
			    argv[i], FUNC5(r));
		r = FUNC6(krl, k);
		FUNC4("%s%s%s%s: %s\n", argv[i],
		    *comment ? " (" : "", comment, *comment ? ")" : "",
		    r == 0 ? "ok" : "REVOKED");
		if (r != 0)
			ret = 1;
		FUNC8(k);
		FUNC2(comment);
	}
	FUNC7(krl);
	FUNC0(ret);
}