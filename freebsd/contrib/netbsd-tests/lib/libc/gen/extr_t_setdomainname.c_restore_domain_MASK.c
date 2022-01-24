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
 int /*<<< orphan*/  DOMAIN_BACKUP_FILE ; 
 int MAXHOSTNAMELEN ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char*,int) ; 
 scalar_t__ FUNC5 (char*,int) ; 

__attribute__((used)) static void
FUNC6(void)
{
	char domain[MAXHOSTNAMELEN];
	int fd;
	ssize_t r, n = 0;

	FUNC2(domain, 0, sizeof(domain));
	if ((fd = FUNC3(DOMAIN_BACKUP_FILE, O_RDONLY)) < 0)
		FUNC1(1, "open");
	while ((r = FUNC4(fd, domain + n, sizeof(domain) - n)) > 0)
		n += r;
	if (r < 0)
		FUNC1(1, "read");
	if (FUNC5(domain, n) != 0)
		FUNC1(1, "setdomainname");
	FUNC0(fd);
}