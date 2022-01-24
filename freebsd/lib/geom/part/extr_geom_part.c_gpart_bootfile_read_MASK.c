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
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 void* FUNC4 (scalar_t__) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,void*,scalar_t__) ; 
 int FUNC7 (char const*,struct stat*) ; 

__attribute__((used)) static void *
FUNC8(const char *bootfile, ssize_t *size)
{
	struct stat sb;
	void *code;
	int fd;

	if (FUNC7(bootfile, &sb) == -1)
		FUNC2(EXIT_FAILURE, "%s", bootfile);
	if (!FUNC0(sb.st_mode))
		FUNC3(EXIT_FAILURE, "%s: not a regular file", bootfile);
	if (sb.st_size == 0)
		FUNC3(EXIT_FAILURE, "%s: empty file", bootfile);
	if (*size > 0 && sb.st_size > *size)
		FUNC3(EXIT_FAILURE, "%s: file too big (%zu limit)", bootfile,
		    *size);

	*size = sb.st_size;

	fd = FUNC5(bootfile, O_RDONLY);
	if (fd == -1)
		FUNC2(EXIT_FAILURE, "%s", bootfile);
	code = FUNC4(*size);
	if (code == NULL)
		FUNC2(EXIT_FAILURE, NULL);
	if (FUNC6(fd, code, *size) != *size)
		FUNC2(EXIT_FAILURE, "%s", bootfile);
	FUNC1(fd);

	return (code);
}