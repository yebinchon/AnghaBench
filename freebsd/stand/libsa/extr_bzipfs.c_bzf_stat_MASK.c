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
struct stat {int st_size; } ;
struct open_file {scalar_t__ f_fsdata; } ;
struct bz_file {int /*<<< orphan*/  bzf_rawfd; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct stat*) ; 

__attribute__((used)) static int
FUNC1(struct open_file *f, struct stat *sb)
{
    struct bz_file	*bzf = (struct bz_file *)f->f_fsdata;
    int			result;

    /* stat as normal, but indicate that size is unknown */
    if ((result = FUNC0(bzf->bzf_rawfd, sb)) == 0)
	sb->st_size = -1;
    return(result);
}