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
struct sshkey {int dummy; } ;
struct TYPE_2__ {int add_keys_to_agent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__ options ; 
 int FUNC4 (int,struct sshkey const*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int*) ; 

void
FUNC6(char *authfile, const struct sshkey *private,
    char *comment, char *passphrase)
{
	int auth_sock = -1, r;

	if (options.add_keys_to_agent == 0)
		return;

	if ((r = FUNC5(&auth_sock)) != 0) {
		FUNC3("no authentication agent, not adding key");
		return;
	}

	if (options.add_keys_to_agent == 2 &&
	    !FUNC0("Add key %s (%s) to agent?", authfile, comment)) {
		FUNC3("user denied adding this key");
		FUNC1(auth_sock);
		return;
	}

	if ((r = FUNC4(auth_sock, private, comment, 0,
	    (options.add_keys_to_agent == 3), 0)) == 0)
		FUNC2("identity added to agent: %s", authfile);
	else
		FUNC2("could not add identity to agent: %s (%d)", authfile, r);
	FUNC1(auth_sock);
}