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
struct sshauthopt {int dummy; } ;
struct ssh {int dummy; } ;
struct passwd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  strict_modes; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,struct passwd*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ssh*,struct passwd*,int /*<<< orphan*/ *,char*,struct sshkey*,struct sshauthopt**) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ options ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct passwd*) ; 

__attribute__((used)) static int
FUNC6(struct ssh *ssh, struct passwd *pw, struct sshkey *key,
    char *file, struct sshauthopt **authoptsp)
{
	FILE *f;
	int found_key = 0;

	if (authoptsp != NULL)
		*authoptsp = NULL;

	/* Temporarily use the user's uid. */
	FUNC5(pw);

	FUNC2("trying public key file %s", file);
	if ((f = FUNC0(file, pw, options.strict_modes)) != NULL) {
		found_key = FUNC1(ssh, pw, f, file,
		    key, authoptsp);
		FUNC3(f);
	}

	FUNC4();
	return found_key;
}