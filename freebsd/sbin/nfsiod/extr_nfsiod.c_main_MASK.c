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
struct xvfsconf {int dummy; } ;

/* Variables and functions */
 unsigned int MAXNFSDCNT ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char**,char*) ; 
 int FUNC5 (char*,struct xvfsconf*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned int,unsigned int) ; 
 int FUNC8 (char*,unsigned int*,size_t*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,unsigned int,unsigned int) ; 

int
FUNC11(int argc, char *argv[])
{
	int ch;
	struct xvfsconf vfc;
	int error;
	unsigned int iodmin, iodmax, num_servers;
	size_t len;

	error = FUNC5("nfs", &vfc);
	if (error) {
		if (FUNC6("nfs") == -1)
			FUNC1(1, "kldload(nfs)");
		error = FUNC5("nfs", &vfc);
	}
	if (error)
		FUNC2(1, "NFS support is not available in the running kernel");

	num_servers = 0;
	while ((ch = FUNC4(argc, argv, "n:")) != -1)
		switch (ch) {
		case 'n':
			num_servers = FUNC0(optarg);
			if (num_servers < 1) {
				FUNC10("nfsiod count %u; reset to %d",
				    num_servers, 1);
				num_servers = 1;
			}
			if (num_servers > MAXNFSDCNT) {
				FUNC10("nfsiod count %u; reset to %d",
				    num_servers, MAXNFSDCNT);
				num_servers = MAXNFSDCNT;
			}
			break;
		case '?':
		default:
			FUNC9();
		}
	argc -= optind;
	argv += optind;

	if (argc > 0)
		FUNC9();

	len = sizeof iodmin;
	error = FUNC8("vfs.nfs.iodmin", &iodmin, &len, NULL, 0);
	if (error < 0)
		FUNC1(1, "sysctlbyname(\"vfs.nfs.iodmin\")");
	len = sizeof iodmax;
	error = FUNC8("vfs.nfs.iodmax", &iodmax, &len, NULL, 0);
	if (error < 0)
		FUNC1(1, "sysctlbyname(\"vfs.nfs.iodmax\")");
	if (num_servers == 0) {		/* no change */
		FUNC7("vfs.nfs.iodmin=%u\nvfs.nfs.iodmax=%u\n",
		    iodmin, iodmax);
		FUNC3(0);
	}
	/* Catch the case where we're lowering num_servers below iodmin */
	if (iodmin > num_servers) {
		iodmin = num_servers;
		error = FUNC8("vfs.nfs.iodmin", NULL, 0, &iodmin,
		    sizeof iodmin);
		if (error < 0)
			FUNC1(1, "sysctlbyname(\"vfs.nfs.iodmin\")");
	}
	iodmax = num_servers;
	error = FUNC8("vfs.nfs.iodmax", NULL, 0, &iodmax, sizeof iodmax);
	if (error < 0)
		FUNC1(1, "sysctlbyname(\"vfs.nfs.iodmax\")");
	FUNC3 (0);
}