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
 int /*<<< orphan*/  RP_ALLOW_STDIN ; 
 int SSH_ERR_KEY_WRONG_PASSPHRASE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ identity_passphrase ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (char*,char*,struct sshkey**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (scalar_t__) ; 

__attribute__((used)) static struct sshkey *
FUNC8(char *filename)
{
	char *pass;
	struct sshkey *prv;
	int r;

	if ((r = FUNC5(filename, "", &prv, NULL)) == 0)
		return prv;
	if (r != SSH_ERR_KEY_WRONG_PASSPHRASE)
		FUNC1("Load key \"%s\": %s", filename, FUNC4(r));
	if (identity_passphrase)
		pass = FUNC7(identity_passphrase);
	else
		pass = FUNC3("Enter passphrase: ", RP_ALLOW_STDIN);
	r = FUNC5(filename, pass, &prv, NULL);
	FUNC0(pass, FUNC6(pass));
	FUNC2(pass);
	if (r != 0)
		FUNC1("Load key \"%s\": %s", filename, FUNC4(r));
	return prv;
}