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
struct gctl_req {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  overwrites ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 unsigned int G_ELI_OVERWRITES ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct gctl_req*,char*,...) ; 
 unsigned char* FUNC5 (int) ; 
 int FUNC6 (int,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (char*,unsigned int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct gctl_req *req, const char *prov, int fd, off_t offset)
{
	unsigned int overwrites;
	unsigned char *sector;
	ssize_t size;
	int error;

	size = sizeof(overwrites);
	if (FUNC8("kern.geom.eli.overwrites", &overwrites, &size,
	    NULL, 0) == -1 || overwrites == 0) {
		overwrites = G_ELI_OVERWRITES;
	}

	size = FUNC3(fd);
	if (size <= 0) {
		FUNC4(req, "Cannot obtain provider sector size %s: %s.",
		    prov, FUNC7(errno));
		return (-1);
	}
	sector = FUNC5(size);
	if (sector == NULL) {
		FUNC4(req, "Cannot allocate %zd bytes of memory.", size);
		return (-1);
	}

	error = 0;
	do {
		FUNC0(sector, size);
		if (FUNC6(fd, sector, size, offset) != size) {
			if (error == 0)
				error = errno;
		}
		(void)FUNC2(fd);
	} while (--overwrites > 0);
	FUNC1(sector);
	if (error != 0) {
		FUNC4(req, "Cannot trash metadata on provider %s: %s.",
		    prov, FUNC7(error));
		return (-1);
	}
	return (0);
}