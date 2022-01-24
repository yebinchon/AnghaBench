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
typedef  scalar_t__ u_int ;
struct sftp_conn {int /*<<< orphan*/  msg_id; } ;
typedef  int /*<<< orphan*/  Attrib ;

/* Variables and functions */
 int /*<<< orphan*/  SSH2_FXP_MKDIR ; 
 scalar_t__ SSH2_FX_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct sftp_conn*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sftp_conn*,scalar_t__,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

int
FUNC5(struct sftp_conn *conn, const char *path, Attrib *a, int print_flag)
{
	u_int status, id;

	id = conn->msg_id++;
	FUNC3(conn, id, SSH2_FXP_MKDIR, path,
	    FUNC4(path), a);

	status = FUNC2(conn, id);
	if (status != SSH2_FX_OK && print_flag)
		FUNC0("Couldn't create directory: %s", FUNC1(status));

	return status == SSH2_FX_OK ? 0 : -1;
}