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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  HZFILE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char*,int) ; 

__attribute__((used)) static bool
FUNC4(void)
{
	char buf[16];
	bool rv = true;
	int fd;

	fd = FUNC2(HZFILE, O_RDONLY);
	if (fd == -1)
		return false;
	if (FUNC3(fd, buf, sizeof(buf)) < 1)
		rv = false;
	FUNC0(FUNC1(fd));

	return rv;
}