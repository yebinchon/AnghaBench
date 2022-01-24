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
struct stat {int dummy; } ;
struct dirent {scalar_t__ d_type; int /*<<< orphan*/ * d_name; } ;
typedef  int /*<<< orphan*/  pcap_if_list_t ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ DT_REG ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int /*<<< orphan*/  PF_UNIX ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC3 (char*,struct stat*) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int /*<<< orphan*/ *) ; 
 struct dirent* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC10(pcap_if_list_t *devlistp, char *errbuf)
{
	DIR *sys_class_net_d;
	int fd;
	struct dirent *ent;
	char subsystem_path[PATH_MAX+1];
	struct stat statb;
	int ret = 1;

	sys_class_net_d = FUNC4("/sys/class/net");
	if (sys_class_net_d == NULL) {
		/*
		 * Don't fail if it doesn't exist at all.
		 */
		if (errno == ENOENT)
			return (0);

		/*
		 * Fail if we got some other error.
		 */
		FUNC5(errbuf, PCAP_ERRBUF_SIZE,
		    errno, "Can't open /sys/class/net");
		return (-1);
	}

	/*
	 * Create a socket from which to fetch interface information.
	 */
	fd = FUNC8(PF_UNIX, SOCK_RAW, 0);
	if (fd < 0) {
		FUNC5(errbuf, PCAP_ERRBUF_SIZE,
		    errno, "socket");
		(void)FUNC2(sys_class_net_d);
		return (-1);
	}

	for (;;) {
		errno = 0;
		ent = FUNC7(sys_class_net_d);
		if (ent == NULL) {
			/*
			 * Error or EOF; if errno != 0, it's an error.
			 */
			break;
		}

		/*
		 * Ignore "." and "..".
		 */
		if (FUNC9(ent->d_name, ".") == 0 ||
		    FUNC9(ent->d_name, "..") == 0)
			continue;

		/*
		 * Ignore plain files; they do not have subdirectories
		 * and thus have no attributes.
		 */
		if (ent->d_type == DT_REG)
			continue;

		/*
		 * Is there an "ifindex" file under that name?
		 * (We don't care whether it's a directory or
		 * a symlink; older kernels have directories
		 * for devices, newer kernels have symlinks to
		 * directories.)
		 */
		FUNC6(subsystem_path, sizeof subsystem_path,
		    "/sys/class/net/%s/ifindex", ent->d_name);
		if (FUNC3(subsystem_path, &statb) != 0) {
			/*
			 * Stat failed.  Either there was an error
			 * other than ENOENT, and we don't know if
			 * this is an interface, or it's ENOENT,
			 * and either some part of "/sys/class/net/{if}"
			 * disappeared, in which case it probably means
			 * the interface disappeared, or there's no
			 * "ifindex" file, which means it's not a
			 * network interface.
			 */
			continue;
		}

		/*
		 * Attempt to add the interface.
		 */
		if (FUNC0(devlistp, &ent->d_name[0], fd, errbuf) == -1) {
			/* Fail. */
			ret = -1;
			break;
		}
	}
	if (ret != -1) {
		/*
		 * Well, we didn't fail for any other reason; did we
		 * fail due to an error reading the directory?
		 */
		if (errno != 0) {
			FUNC5(errbuf, PCAP_ERRBUF_SIZE,
			    errno, "Error reading /sys/class/net");
			ret = -1;
		}
	}

	(void)FUNC1(fd);
	(void)FUNC2(sys_class_net_d);
	return (ret);
}