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
struct z_file {int /*<<< orphan*/  zf_rawfd; int /*<<< orphan*/  zf_zstream; } ;
struct open_file {scalar_t__ f_fsdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct z_file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct open_file *f)
{
    struct z_file	*zf = (struct z_file *)f->f_fsdata;
    
    FUNC2(&(zf->zf_zstream));
    FUNC0(zf->zf_rawfd);
    FUNC1(zf);
    return(0);
}