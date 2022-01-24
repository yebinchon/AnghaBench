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
struct sshbuf {int dummy; } ;

/* Variables and functions */
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int SSH_ERR_SYSTEM_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int FUNC2 (char const*,int,int) ; 
 scalar_t__ FUNC3 (struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  vwrite ; 

__attribute__((used)) static int
FUNC6(struct sshbuf *keybuf, const char *filename)
{
	int fd, oerrno;

	if ((fd = FUNC2(filename, O_WRONLY | O_CREAT | O_TRUNC, 0600)) < 0)
		return SSH_ERR_SYSTEM_ERROR;
	if (FUNC0(vwrite, fd, FUNC4(keybuf),
	    FUNC3(keybuf)) != FUNC3(keybuf)) {
		oerrno = errno;
		FUNC1(fd);
		FUNC5(filename);
		errno = oerrno;
		return SSH_ERR_SYSTEM_ERROR;
	}
	FUNC1(fd);
	return 0;
}