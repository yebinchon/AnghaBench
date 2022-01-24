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
typedef  int off_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (char const*,int) ; 
 int FUNC8 (int) ; 
 unsigned char* FUNC9 (int) ; 
 int FUNC10 (int,unsigned char*,int,int) ; 

int
FUNC11(const char *name, const unsigned char *md, size_t size)
{
	unsigned char *sector;
	ssize_t sectorsize;
	off_t mediasize;
	int error, fd;

	sector = NULL;
	error = 0;

	fd = FUNC7(name, 1);
	if (fd == -1)
		return (errno);
	mediasize = FUNC6(fd);
	if (mediasize == -1) {
		error = errno;
		goto out;
	}
	sectorsize = FUNC8(fd);
	if (sectorsize == -1) {
		error = errno;
		goto out;
	}
	FUNC0(sectorsize >= (ssize_t)size);
	sector = FUNC9(sectorsize);
	if (sector == NULL) {
		error = ENOMEM;
		goto out;
	}
	FUNC1(md, sector, size);
	FUNC2(sector + size, sectorsize - size);
	if (FUNC10(fd, sector, sectorsize, mediasize - sectorsize) !=
	    sectorsize) {
		error = errno;
		goto out;
	}
	(void)FUNC5(fd);
out:
	if (sector != NULL)
		FUNC3(sector);
	(void)FUNC4(fd);
	return (error);
}