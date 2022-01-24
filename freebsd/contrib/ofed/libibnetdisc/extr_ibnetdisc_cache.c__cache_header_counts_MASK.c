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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int IBND_FABRIC_CACHE_BUFLEN ; 
 int /*<<< orphan*/  IBND_FABRIC_CACHE_COUNT_OFFSET ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(int fd, unsigned int node_count,
				unsigned int port_count)
{
	uint8_t buf[IBND_FABRIC_CACHE_BUFLEN];
	size_t offset = 0;

	offset += FUNC1(buf + offset, node_count);
	offset += FUNC1(buf + offset, port_count);

	if (FUNC3(fd, IBND_FABRIC_CACHE_COUNT_OFFSET, SEEK_SET) < 0) {
		FUNC0("lseek: %s\n", FUNC4(errno));
		return -1;
	}

	if (FUNC2(fd, buf, offset) < 0)
		return -1;

	return 0;
}