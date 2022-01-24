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
struct open_file {scalar_t__ f_fsdata; } ;
struct bz_file {int /*<<< orphan*/  bzf_rawfd; int /*<<< orphan*/  bzf_bzstream; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bz_file*) ; 

__attribute__((used)) static int
FUNC3(struct open_file *f)
{
    struct bz_file	*bzf = (struct bz_file *)f->f_fsdata;
    
    FUNC0(&(bzf->bzf_bzstream));
    FUNC1(bzf->bzf_rawfd);
    FUNC2(bzf);
    return(0);
}