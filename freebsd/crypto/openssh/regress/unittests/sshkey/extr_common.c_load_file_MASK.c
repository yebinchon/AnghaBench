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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sshbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sshbuf* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

struct sshbuf *
FUNC8(const char *name)
{
	int fd;
	struct sshbuf *ret;

	FUNC2(ret = FUNC5(), NULL);
	FUNC1(fd = FUNC4(FUNC7(name), O_RDONLY), -1);
	FUNC0(FUNC6(fd, ret), 0);
	FUNC3(fd);
	return ret;
}