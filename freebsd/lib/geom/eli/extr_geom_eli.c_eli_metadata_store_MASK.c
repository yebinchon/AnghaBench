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
struct g_eli_metadata {int dummy; } ;
typedef  int /*<<< orphan*/  sector ;

/* Variables and functions */
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct g_eli_metadata*,unsigned char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int FUNC4 (char const*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gctl_req*,char*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int,unsigned char*,int) ; 

__attribute__((used)) static int
FUNC9(struct gctl_req *req, const char *prov,
    struct g_eli_metadata *md)
{
	unsigned char sector[sizeof(struct g_eli_metadata)];
	int error;

	FUNC1(md, sector);
	if (FUNC3(prov) == 0) {
		int fd;

		/* This is a file probably. */
		fd = FUNC6(prov, O_WRONLY | O_TRUNC);
		if (fd == -1) {
			FUNC5(req, "Cannot open %s: %s.", prov,
			    FUNC7(errno));
			FUNC2(sector, sizeof(sector));
			return (-1);
		}
		if (FUNC8(fd, sector, sizeof(sector)) != sizeof(sector)) {
			FUNC5(req, "Cannot write metadata to %s: %s.",
			    prov, FUNC7(errno));
			FUNC2(sector, sizeof(sector));
			FUNC0(fd);
			return (-1);
		}
		FUNC0(fd);
	} else {
		/* This is a GEOM provider. */
		error = FUNC4(prov, sector, sizeof(sector));
		if (error != 0) {
			FUNC5(req, "Cannot write metadata to %s: %s.",
			    prov, FUNC7(errno));
			FUNC2(sector, sizeof(sector));
			return (-1);
		}
	}
	FUNC2(sector, sizeof(sector));
	return (0);
}