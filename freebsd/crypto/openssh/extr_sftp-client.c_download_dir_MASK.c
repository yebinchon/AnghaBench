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
typedef  int /*<<< orphan*/  Attrib ;

/* Variables and functions */
 char* FUNC0 (struct sftp_conn*,char const*) ; 
 int FUNC1 (struct sftp_conn*,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int
FUNC4(struct sftp_conn *conn, const char *src, const char *dst,
    Attrib *dirattrib, int preserve_flag, int print_flag, int resume_flag,
    int fsync_flag)
{
	char *src_canon;
	int ret;

	if ((src_canon = FUNC0(conn, src)) == NULL) {
		FUNC2("Unable to canonicalize path \"%s\"", src);
		return -1;
	}

	ret = FUNC1(conn, src_canon, dst, 0,
	    dirattrib, preserve_flag, print_flag, resume_flag, fsync_flag);
	FUNC3(src_canon);
	return ret;
}