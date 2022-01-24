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
struct passwd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct passwd*,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  have_identity ; 
 int /*<<< orphan*/  identity_file ; 
 struct sshkey* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct sshkey*) ; 
 int FUNC8 (struct sshkey*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct passwd *pw)
{
	struct sshkey *prv;
	struct stat st;
	int r;

	if (!have_identity)
		FUNC0(pw, "Enter file in which the key is");
	if (FUNC9(identity_file, &st) < 0)
		FUNC3("%s: %s", identity_file, FUNC10(errno));
	prv = FUNC5(identity_file);
	if ((r = FUNC8(prv, stdout)) != 0)
		FUNC1("sshkey_write failed: %s", FUNC6(r));
	FUNC7(prv);
	FUNC4(stdout, "\n");
	FUNC2(0);
}