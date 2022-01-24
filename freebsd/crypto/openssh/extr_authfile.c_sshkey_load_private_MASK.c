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
struct sshbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_KEY_BAD_PERMISSIONS ; 
 int SSH_ERR_SYSTEM_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sshbuf*) ; 
 struct sshbuf* FUNC3 () ; 
 int FUNC4 (int,struct sshbuf*) ; 
 int FUNC5 (struct sshbuf*,char const*,struct sshkey**,char**) ; 
 scalar_t__ FUNC6 (int,char const*) ; 
 int FUNC7 (struct sshkey*,char const*) ; 

int
FUNC8(const char *filename, const char *passphrase,
    struct sshkey **keyp, char **commentp)
{
	struct sshbuf *buffer = NULL;
	int r, fd;

	if (keyp != NULL)
		*keyp = NULL;
	if (commentp != NULL)
		*commentp = NULL;

	if ((fd = FUNC1(filename, O_RDONLY)) < 0)
		return SSH_ERR_SYSTEM_ERROR;
	if (FUNC6(fd, filename) != 0) {
		r = SSH_ERR_KEY_BAD_PERMISSIONS;
		goto out;
	}

	if ((buffer = FUNC3()) == NULL) {
		r = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	if ((r = FUNC4(fd, buffer)) != 0 ||
	    (r = FUNC5(buffer, passphrase, keyp,
	    commentp)) != 0)
		goto out;
	if (keyp && *keyp &&
	    (r = FUNC7(*keyp, filename)) != 0)
		goto out;
	r = 0;
 out:
	FUNC0(fd);
	FUNC2(buffer);
	return r;
}