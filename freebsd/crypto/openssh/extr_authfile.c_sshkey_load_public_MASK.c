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
 int /*<<< orphan*/  KEY_UNSPEC ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int FUNC0 (char**,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sshkey*) ; 
 struct sshkey* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sshkey*,char const*,char**) ; 

int
FUNC5(const char *filename, struct sshkey **keyp, char **commentp)
{
	struct sshkey *pub = NULL;
	char *file = NULL;
	int r;

	if (keyp != NULL)
		*keyp = NULL;
	if (commentp != NULL)
		*commentp = NULL;

	if ((pub = FUNC3(KEY_UNSPEC)) == NULL)
		return SSH_ERR_ALLOC_FAIL;
	if ((r = FUNC4(pub, filename, commentp)) == 0) {
		if (keyp != NULL) {
			*keyp = pub;
			pub = NULL;
		}
		r = 0;
		goto out;
	}
	FUNC2(pub);

	/* try .pub suffix */
	if (FUNC0(&file, "%s.pub", filename) == -1)
		return SSH_ERR_ALLOC_FAIL;
	if ((pub = FUNC3(KEY_UNSPEC)) == NULL) {
		r = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	if ((r = FUNC4(pub, file, commentp)) == 0) {
		if (keyp != NULL) {
			*keyp = pub;
			pub = NULL;
		}
		r = 0;
	}
 out:
	FUNC1(file);
	FUNC2(pub);
	return r;
}