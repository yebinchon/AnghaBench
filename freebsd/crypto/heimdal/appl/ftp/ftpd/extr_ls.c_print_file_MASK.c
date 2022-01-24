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
struct fileinfo {int link; int /*<<< orphan*/ * filename; int /*<<< orphan*/  date; int /*<<< orphan*/  size; int /*<<< orphan*/ * minor; int /*<<< orphan*/ * major; int /*<<< orphan*/  group; int /*<<< orphan*/  user; int /*<<< orphan*/  n_link; int /*<<< orphan*/  mode; int /*<<< orphan*/  bsize; int /*<<< orphan*/  inode; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LS_INODE ; 
 int LS_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void
FUNC1(FILE *out,
	   int flags,
	   struct fileinfo *f,
	   int max_inode,
	   int max_bsize,
	   int max_n_link,
	   int max_user,
	   int max_group,
	   int max_size,
	   int max_major,
	   int max_minor,
	   int max_date)
{
    if(f->filename == NULL)
	return;

    if(flags & LS_INODE) {
	FUNC0(out, "%*d", max_inode, f->inode);
	FUNC0(out, "  ");
    }
    if(flags & LS_SIZE) {
	FUNC0(out, "%*d", max_bsize, f->bsize);
	FUNC0(out, "  ");
    }
    FUNC0(out, "%s", f->mode);
    FUNC0(out, "  ");
    FUNC0(out, "%*d", max_n_link, f->n_link);
    FUNC0(out, " ");
    FUNC0(out, "%-*s", max_user, f->user);
    FUNC0(out, "  ");
    FUNC0(out, "%-*s", max_group, f->group);
    FUNC0(out, "  ");
    if(f->major != NULL && f->minor != NULL)
	FUNC0(out, "%*s, %*s", max_major, f->major, max_minor, f->minor);
    else
	FUNC0(out, "%*s", max_size, f->size);
    FUNC0(out, " ");
    FUNC0(out, "%*s", max_date, f->date);
    FUNC0(out, " ");
    FUNC0(out, "%s", f->filename);
    if(f->link)
	FUNC0(out, " -> %s", f->link);
    FUNC0(out, "\r\n");
}