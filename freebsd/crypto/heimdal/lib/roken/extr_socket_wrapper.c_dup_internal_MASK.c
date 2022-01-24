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
struct socket_info {int fd; int /*<<< orphan*/  io; int /*<<< orphan*/  peername_len; void* peername; int /*<<< orphan*/  myname_len; void* myname; void* tmp_path; void* path; int /*<<< orphan*/  bcast; int /*<<< orphan*/  bound; int /*<<< orphan*/  protocol; int /*<<< orphan*/  type; int /*<<< orphan*/  family; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct socket_info*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 void* FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sockets ; 
 void* FUNC3 (void*) ; 

__attribute__((used)) static int
FUNC4(const struct socket_info *si_oldd, int fd)
{
	struct socket_info *si_newd;

	si_newd = (struct socket_info *)FUNC1(1, sizeof(struct socket_info));

	si_newd->fd = fd;

	si_newd->family = si_oldd->family;
	si_newd->type = si_oldd->type;
	si_newd->protocol = si_oldd->protocol;
	si_newd->bound = si_oldd->bound;
	si_newd->bcast = si_oldd->bcast;
	if (si_oldd->path)
		si_newd->path = FUNC3(si_oldd->path);
	if (si_oldd->tmp_path)
		si_newd->tmp_path = FUNC3(si_oldd->tmp_path);
	si_newd->myname =
	    FUNC2(si_oldd->myname, si_oldd->myname_len);
	si_newd->myname_len = si_oldd->myname_len;
	si_newd->peername =
	    FUNC2(si_oldd->peername, si_oldd->peername_len);
	si_newd->peername_len = si_oldd->peername_len;

	si_newd->io = si_oldd->io;

	FUNC0(sockets, si_newd);

	return fd;
}