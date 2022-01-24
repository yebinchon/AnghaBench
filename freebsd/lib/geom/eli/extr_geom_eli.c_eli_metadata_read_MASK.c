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
struct g_eli_metadata {scalar_t__ md_version; } ;
typedef  int /*<<< orphan*/  sector ;

/* Variables and functions */
#define  EINVAL 129 
#define  EOPNOTSUPP 128 
 int /*<<< orphan*/  G_ELI_MAGIC ; 
 int /*<<< orphan*/  G_ELI_VERSION ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned char*,struct g_eli_metadata*) ; 
 int errno ; 
 scalar_t__ FUNC2 (char const*) ; 
 int FUNC3 (char const*,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gctl_req*,char*,char const*,...) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int
FUNC8(struct gctl_req *req, const char *prov,
    struct g_eli_metadata *md)
{
	unsigned char sector[sizeof(struct g_eli_metadata)];
	int error;

	if (FUNC2(prov) == 0) {
		int fd;

		/* This is a file probably. */
		fd = FUNC5(prov, O_RDONLY);
		if (fd == -1) {
			FUNC4(req, "Cannot open %s: %s.", prov,
			    FUNC7(errno));
			return (-1);
		}
		if (FUNC6(fd, sector, sizeof(sector)) != sizeof(sector)) {
			FUNC4(req, "Cannot read metadata from %s: %s.",
			    prov, FUNC7(errno));
			FUNC0(fd);
			return (-1);
		}
		FUNC0(fd);
	} else {
		/* This is a GEOM provider. */
		error = FUNC3(prov, sector, sizeof(sector),
		    G_ELI_MAGIC);
		if (error != 0) {
			FUNC4(req, "Cannot read metadata from %s: %s.",
			    prov, FUNC7(error));
			return (-1);
		}
	}
	error = FUNC1(sector, md);
	switch (error) {
	case 0:
		break;
	case EOPNOTSUPP:
		FUNC4(req,
		    "Provider's %s metadata version %u is too new.\n"
		    "geli: The highest supported version is %u.",
		    prov, (unsigned int)md->md_version, G_ELI_VERSION);
		return (-1);
	case EINVAL:
		FUNC4(req, "Inconsistent provider's %s metadata.", prov);
		return (-1);
	default:
		FUNC4(req,
		    "Unexpected error while decoding provider's %s metadata: %s.",
		    prov, FUNC7(error));
		return (-1);
	}
	return (0);
}