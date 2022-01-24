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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct sshkey*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  identity_file ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct sshkey*) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ *,struct sshkey**,char**) ; 
 int FUNC7 (char const*,struct sshkey**,char**) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(const char *path)
{
	struct stat st;
	char *comment = NULL;
	struct sshkey *public = NULL;
	int r;

	if (FUNC8(identity_file, &st) < 0)
		FUNC1("%s: %s", path, FUNC9(errno));
	if ((r = FUNC7(path, &public, &comment)) != 0) {
		FUNC0("load public \"%s\": %s", path, FUNC4(r));
		if ((r = FUNC6(path, NULL,
		    &public, &comment)) != 0) {
			FUNC0("load private \"%s\": %s", path, FUNC4(r));
			FUNC1("%s is not a key file.", path);
		}
	}

	FUNC2(public, comment);
	FUNC5(public);
	FUNC3(comment);
}