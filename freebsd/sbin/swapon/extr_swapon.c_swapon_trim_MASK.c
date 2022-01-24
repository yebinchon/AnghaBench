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
struct stat {int /*<<< orphan*/  st_mode; scalar_t__ st_size; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 scalar_t__ BBSIZE ; 
 int /*<<< orphan*/  DIOCGDELETE ; 
 int /*<<< orphan*/  DIOCGMEDIASIZE ; 
 int /*<<< orphan*/  O_WRONLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char const*) ; 
 scalar_t__ FUNC5 (int,struct stat*) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int
FUNC10(const char *name)
{
	struct stat sb;
	off_t ioarg[2], sz;
	int error, fd;

	/* Open a descriptor to create a consumer of the device. */
	fd = FUNC7(name, O_WRONLY);
	if (fd < 0)
		FUNC4(1, "Cannot open %s", name);
	/* Find the device size. */
	if (FUNC5(fd, &sb) < 0)
		FUNC4(1, "Cannot stat %s", name);
	if (FUNC1(sb.st_mode))
		sz = sb.st_size;
	else if (FUNC0(sb.st_mode)) {
		if (FUNC6(fd, DIOCGMEDIASIZE, &sz) != 0)
			FUNC3(1, "ioctl(DIOCGMEDIASIZE)");
	} else
		FUNC4(1, "%s has an invalid file type", name);
	/* Trim the device. */
	ioarg[0] = BBSIZE;
	ioarg[1] = sz - BBSIZE;
	if (FUNC6(fd, DIOCGDELETE, ioarg) != 0)
		FUNC9("ioctl(DIOCGDELETE)");

	/* Start using the device for swapping, creating a second consumer. */
	error = FUNC8(name);

	/*
	 * Do not close the device until the swap pager has attempted to create
	 * another consumer.  For GELI devices created with the 'detach -l'
	 * option, removing the last consumer causes the device to be detached
	 * - that is, to disappear.  This ordering ensures that the device will
	 * not be detached until swapoff is called.
	 */
	FUNC2(fd);
	return (error);
}