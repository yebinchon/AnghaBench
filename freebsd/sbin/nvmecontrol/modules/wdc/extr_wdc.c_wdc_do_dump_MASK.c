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
typedef  char uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  MAXPATHLEN ; 
 int NVME_MAX_XFER_SIZE ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 char* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 int FUNC7 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int,int,size_t,int,int,char*,size_t) ; 
 scalar_t__ FUNC11 (int,char*,size_t) ; 

__attribute__((used)) static void
FUNC12(int fd, char *tmpl, const char *suffix, uint32_t opcode,
    uint32_t cmd, int len_off)
{
	int first;
	int fd2;
	uint8_t *buf;
	uint32_t len, offset;
	size_t resid;

	FUNC9(fd, tmpl, MAXPATHLEN, suffix);

	/* XXX overwrite protection? */
	fd2 = FUNC7(tmpl, O_WRONLY | O_CREAT | O_TRUNC, 0644);
	if (fd2 < 0)
		FUNC3(1, "open %s", tmpl);
	buf = FUNC0(PAGE_SIZE, NVME_MAX_XFER_SIZE);
	if (buf == NULL)
		FUNC4(1, "Can't get buffer to read dump");
	offset = 0;
	len = NVME_MAX_XFER_SIZE;
	first = 1;

	do {
		resid = len > NVME_MAX_XFER_SIZE ? NVME_MAX_XFER_SIZE : len;
		FUNC10(fd, opcode, resid, offset, cmd, buf, resid);

		if (first) {
			len = FUNC1(buf + len_off);
			if (len == 0)
				FUNC4(1, "No data for %s", suffix);
			if (FUNC6("E6LG", buf, 4) != 0)
				FUNC8("Expected header of E6LG, found '%4.4s' instead\n",
				    buf);
			FUNC8("Dumping %d bytes of version %d.%d log to %s\n", len,
			    buf[8], buf[9], tmpl);
			/*
			 * Adjust amount to dump if total dump < 1MB,
			 * though it likely doesn't matter to the WDC
			 * analysis tools.
			 */
			if (resid > len)
				resid = len;
			first = 0;
		}
		if (FUNC11(fd2, buf, resid) != (ssize_t)resid)
			FUNC3(1, "write");
		offset += resid;
		len -= resid;
	} while (len > 0);
	FUNC5(buf);
	FUNC2(fd2);
}