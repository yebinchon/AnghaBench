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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  domain ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DOMAIN_BACKUP_FILE ; 
 int MAXHOSTNAMELEN ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 size_t FUNC6 (char*,int) ; 
 int FUNC7 (int,char*,int) ; 

__attribute__((used)) static void
FUNC8(void)
{
	char domain[MAXHOSTNAMELEN];
	int fd;
	size_t l;
	ssize_t r,n = 0;

	FUNC4(domain, 0, sizeof(domain));

	FUNC1(0, FUNC3(domain, sizeof(domain)));
	l = FUNC6(domain, MAXHOSTNAMELEN);
	fd = FUNC5(DOMAIN_BACKUP_FILE, O_WRONLY | O_CREAT | O_EXCL, 0644);
	FUNC0(fd >= 0);
	while ((r = FUNC7(fd, domain + n, l - n)) > 0)
		n += r;
	FUNC1(0, r);
	FUNC2(fd);
}