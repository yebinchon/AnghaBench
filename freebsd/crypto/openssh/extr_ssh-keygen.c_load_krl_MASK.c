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
struct ssh_krl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct sshbuf*,struct ssh_krl**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sshbuf*) ; 
 struct sshbuf* FUNC6 () ; 
 int FUNC7 (int,struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(const char *path, struct ssh_krl **krlp)
{
	struct sshbuf *krlbuf;
	int r, fd;

	if ((krlbuf = FUNC6()) == NULL)
		FUNC1("sshbuf_new failed");
	if ((fd = FUNC2(path, O_RDONLY)) == -1)
		FUNC1("open %s: %s", path, FUNC8(errno));
	if ((r = FUNC7(fd, krlbuf)) != 0)
		FUNC1("Unable to load KRL: %s", FUNC3(r));
	FUNC0(fd);
	/* XXX check sigs */
	if ((r = FUNC4(krlbuf, krlp, NULL, 0)) != 0 ||
	    *krlp == NULL)
		FUNC1("Invalid KRL file: %s", FUNC3(r));
	FUNC5(krlbuf);
}