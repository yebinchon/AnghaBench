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
struct sshkey_cert {int dummy; } ;
struct sshauthopt {int dummy; } ;
struct ssh {int dummy; } ;
struct passwd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  strict_modes; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,struct passwd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__ options ; 
 int FUNC3 (struct ssh*,int /*<<< orphan*/ *,char*,struct sshkey_cert*,struct sshauthopt**) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct passwd*) ; 

__attribute__((used)) static int
FUNC6(struct ssh *ssh, struct passwd *pw, char *file,
    struct sshkey_cert *cert, struct sshauthopt **authoptsp)
{
	FILE *f;
	int success;

	if (authoptsp != NULL)
		*authoptsp = NULL;

	FUNC5(pw);
	FUNC1("trying authorized principals file %s", file);
	if ((f = FUNC0(file, pw, options.strict_modes)) == NULL) {
		FUNC4();
		return 0;
	}
	success = FUNC3(ssh, f, file, cert, authoptsp);
	FUNC2(f);
	FUNC4();
	return success;
}