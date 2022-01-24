#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sftp_conn {int dummy; } ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  perm; } ;
typedef  TYPE_1__ Attrib ;

/* Variables and functions */
 int SSH2_FILEXFER_ATTR_PERMISSIONS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct sftp_conn*,char const*,int) ; 

__attribute__((used)) static int
FUNC2(struct sftp_conn *conn, const char *path)
{
	Attrib *a;

	/* XXX: report errors? */
	if ((a = FUNC1(conn, path, 1)) == NULL)
		return(0);
	if (!(a->flags & SSH2_FILEXFER_ATTR_PERMISSIONS))
		return(0);
	return(FUNC0(a->perm));
}