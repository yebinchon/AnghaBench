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
typedef  int /*<<< orphan*/  SFTP_DIRENT ;

/* Variables and functions */
 int FUNC0 (struct sftp_conn*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ***) ; 

int
FUNC1(struct sftp_conn *conn, const char *path, SFTP_DIRENT ***dir)
{
	return(FUNC0(conn, path, 0, dir));
}