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
struct futx {int dummy; } ;

/* Variables and functions */
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  _PATH_UTX_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct futx const*,int) ; 

__attribute__((used)) static void
FUNC3(const struct futx *fu)
{
	int fd;

	/* Initialize utx.active with a single BOOT_TIME record. */
	fd = FUNC1(_PATH_UTX_ACTIVE, O_CREAT|O_RDWR|O_TRUNC, 0644);
	if (fd < 0)
		return;
	FUNC2(fd, fu, sizeof(*fu));
	FUNC0(fd);
}