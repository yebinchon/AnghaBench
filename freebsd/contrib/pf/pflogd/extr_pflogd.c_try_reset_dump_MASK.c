#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_size; } ;
struct pcap_file_header {int /*<<< orphan*/  linktype; scalar_t__ sigfigs; int /*<<< orphan*/  snaplen; int /*<<< orphan*/  thiszone; int /*<<< orphan*/  version_minor; int /*<<< orphan*/  version_major; int /*<<< orphan*/  magic; } ;
typedef  int /*<<< orphan*/  hdr ;
struct TYPE_2__ {int /*<<< orphan*/  linktype; int /*<<< orphan*/  snapshot; int /*<<< orphan*/  tzoff; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  PCAP_VERSION_MAJOR ; 
 int /*<<< orphan*/  PCAP_VERSION_MINOR ; 
 int /*<<< orphan*/  TCPDUMP_MAGIC ; 
 int /*<<< orphan*/  _IONBF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ cur_snaplen ; 
 int /*<<< orphan*/ * dpcap ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,char*) ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct stat*) ; 
 int FUNC6 (char*,int,int,int /*<<< orphan*/ *) ; 
 TYPE_1__* hpcap ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC8 () ; 
 int FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ snaplen ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

int
FUNC15(int nomove)
{
	struct pcap_file_header hdr;
	struct stat st;
	int fd;
	FILE *fp;

	if (hpcap == NULL)
		return (-1);

	if (dpcap) {
		FUNC4(dpcap);
		FUNC1(dpcap);
		dpcap = NULL;
	}

	/*
	 * Basically reimplement pcap_dump_open() because it truncates
	 * files and duplicates headers and such.
	 */
	fd = FUNC9();
	if (fd < 0)
		return (-1);

	fp = FUNC2(fd, "a+");

	if (fp == NULL) {
		FUNC7(LOG_ERR, "Error: %s: %s", filename, FUNC14(errno));
		FUNC0(fd);
		return (-1);
	}
	if (FUNC5(FUNC3(fp), &st) == -1) {
		FUNC7(LOG_ERR, "Error: %s: %s", filename, FUNC14(errno));
		FUNC1(fp);
		return (-1);
	}

	/* set FILE unbuffered, we do our own buffering */
	if (FUNC13(fp, NULL, _IONBF, 0)) {
		FUNC7(LOG_ERR, "Failed to set output buffers");
		FUNC1(fp);
		return (-1);
	}

#define TCPDUMP_MAGIC 0xa1b2c3d4

	if (st.st_size == 0) {
		if (snaplen != cur_snaplen) {
			FUNC7(LOG_NOTICE, "Using snaplen %d", snaplen);
			if (FUNC11(snaplen))
				FUNC7(LOG_WARNING,
				    "Failed, using old settings");
		}
		hdr.magic = TCPDUMP_MAGIC;
		hdr.version_major = PCAP_VERSION_MAJOR;
		hdr.version_minor = PCAP_VERSION_MINOR;
		hdr.thiszone = hpcap->tzoff;
		hdr.snaplen = hpcap->snapshot;
		hdr.sigfigs = 0;
		hdr.linktype = hpcap->linktype;

		if (FUNC6((char *)&hdr, sizeof(hdr), 1, fp) != 1) {
			FUNC1(fp);
			return (-1);
		}
	} else if (FUNC10(fp, st.st_size)) {
		FUNC1(fp);
		if (nomove || FUNC8()) {
			FUNC7(LOG_ERR,
			    "Invalid/incompatible log file, move it away");
			return (-1);
		}
		return (1);
	}

	dpcap = fp;

	FUNC12(0);
	FUNC4(fp);

	return (0);
}