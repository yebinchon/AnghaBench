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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int O_CLOEXEC ; 
 int O_RDONLY ; 
 size_t PATH_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,scalar_t__*) ; 
 int FUNC3 (char*,int) ; 
 size_t FUNC4 (char*,char const*,size_t) ; 

__attribute__((used)) static int
FUNC5(char *path, const char *debugfile, uint32_t crc)
{
	size_t n;
	uint32_t compcrc;
	int fd;

	fd = -1;
	if ((n = FUNC4(path, "/", PATH_MAX)) >= PATH_MAX)
		return (fd);
	if (FUNC4(path, debugfile, PATH_MAX) >= PATH_MAX)
		goto out;
	if ((fd = FUNC3(path, O_RDONLY | O_CLOEXEC)) < 0)
		goto out;
	if (FUNC2(fd, &compcrc) != 0 || crc != compcrc) {
		FUNC0("ERROR: CRC32 mismatch for %s", path);
		(void)FUNC1(fd);
		fd = -1;
	}
out:
	path[n] = '\0';
	return (fd);
}