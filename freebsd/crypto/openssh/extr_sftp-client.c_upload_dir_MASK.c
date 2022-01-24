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
struct sftp_conn {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct sftp_conn*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct sftp_conn*,char const*,char*,int /*<<< orphan*/ ,int,int,int,int) ; 

int
FUNC4(struct sftp_conn *conn, const char *src, const char *dst,
    int preserve_flag, int print_flag, int resume, int fsync_flag)
{
	char *dst_canon;
	int ret;

	if ((dst_canon = FUNC0(conn, dst)) == NULL) {
		FUNC1("Unable to canonicalize path \"%s\"", dst);
		return -1;
	}

	ret = FUNC3(conn, src, dst_canon, 0, preserve_flag,
	    print_flag, resume, fsync_flag);

	FUNC2(dst_canon);
	return ret;
}