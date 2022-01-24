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
struct msg_hdr {int len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int FUNC0 (int,char*,int) ; 
 int errno ; 
 scalar_t__ fd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ file_addr ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,struct msg_hdr*,int) ; 
 scalar_t__ FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static int FUNC7(int rs, struct msg_hdr *msg)
{
	char *path = NULL;
	int ret, len;

	FUNC6("opening: ");
	FUNC1(NULL);
	if (file_addr || fd > 0) {
		FUNC6("cannot open another file\n");
		ret = EBUSY;
		goto out;
	}

	len = msg->len - sizeof *msg;
	path = FUNC3(len);
	if (!path) {
		FUNC6("cannot allocate path name\n");
		ret = ENOMEM;
		goto out;
	}

	ret = FUNC0(rs, path, len);
	if (ret != len) {
		FUNC6("error receiving path\n");
		goto out;
	}

	FUNC6("%s, ", path);
	FUNC1(NULL);
	fd = FUNC5(path, O_RDWR | O_CREAT | O_TRUNC, msg->data);
	if (fd < 0) {
		FUNC6("unable to open destination file\n");
		ret = errno;
	}

	ret = 0;
out:
	if (path)
		FUNC2(path);

	FUNC4(rs, msg, ret);
	return ret;
}